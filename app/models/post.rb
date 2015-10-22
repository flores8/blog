class Post < ActiveRecord::Base
	# Validations
	validates :title, presence: true
	validates :body, presence: true
	validates :slug, uniqueness: true, presence: true

	before_validation :generate_slug

	# Relationships
	has_many :comments

	def to_param
		slug
	end

	def generate_slug
		self.slug ||= title.parameterize
	end
end
