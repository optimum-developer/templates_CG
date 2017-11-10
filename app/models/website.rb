class Website < ApplicationRecord
	belongs_to :user
	# has_many :templates
	# has_one :category
	has_one :used_template

	def name
		case category.to_i
		when 1    
		  "Blog Website" 
		when 2  
		  "Restaurant"
		else
		  "School"
		end
	end

end
