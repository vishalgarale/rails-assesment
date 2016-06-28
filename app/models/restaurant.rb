require 'rake'
RailsAssignment1::Application.load_tasks

class Restaurant < ActiveRecord::Base
	def self.load_data
    	load Rails.root.join('lib/tasks/load_restaurants.rake') 
    	Rake::Task['fetch:load_restaurants'].invoke
	end

	def self.fetch_data
		
	end
end
