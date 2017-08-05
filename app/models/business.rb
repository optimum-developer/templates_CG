class Business < ApplicationRecord

	belongs_to :user
	has_many :templates

	def name
		case business_type.to_i
		when 1    
		  "Blog Website" 
		when 2  
		  "Restaurant"
		else
		  "School"
		end
	end
end