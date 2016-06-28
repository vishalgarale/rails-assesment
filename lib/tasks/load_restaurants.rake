namespace :fetch do
	desc "This is task to load restaurants from JSON"
	puts "hi"
	task :load_restaurants => :environment do
		restaurants = DataFetch::Main.get_restaurents
		restaurant_obj = restaurants["businesses"].map do |restaurant|
												{
													name: restaurant["name"],
													review_count: restaurant["review_count"],
													latitude: restaurant["latitude"],
													longitude: restaurant["longitude"],
													city: restaurant["city"], 
													state: restaurant["state"], 
													zip_code: restaurant["zip"],
													avg_rating: restaurant["avg_rating"]
												}
											end
		if restaurant_obj.present? 
			Restaurant.create(restaurant_obj)
		else
			puts "No restaurants found!"
		end
	end
end