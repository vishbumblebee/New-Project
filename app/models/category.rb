class Category < ApplicationRecord
	has_many :items, dependent: :delete_all
	validates :category_name, presence: true
	validates :description, presence: true 
	belongs_to :parent_category

end
