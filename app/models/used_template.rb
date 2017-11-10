class UsedTemplate < ApplicationRecord
	belongs_to :website
	belongs_to :user
	has_many :template_elements
end
