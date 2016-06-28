class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
 			t.integer :review_count
 			t.decimal :latitude, precision: 8, scale: 6
 			t.decimal :longitude, precision: 8, scale: 6
 			t.string :city, limit: 50
 			t.string :state, limit: 50
 			t.string :zip_code
 			t.float  :avg_rating
 			t.timestamps
      t.timestamps
    end
  end
end
