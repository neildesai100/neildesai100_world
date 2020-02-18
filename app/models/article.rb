class Article < ApplicationRecord

	#relationships
	belongs_to :category

	#validations
	validates_presence_of :title
	validates_presence_of :content

	#scopes
	scope :alphabetical, -> { order('title') }
	scope :active, -> { where('active = ?', true) }

end
