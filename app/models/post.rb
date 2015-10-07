class Post < ActiveRecord::Base
	validates :slug, uniqueness: true, presence: true
	before_validation :generate_slug

	has_many :comments

	def to_param
		slug
	end

	def generate_slug
		self.slug ||= title.parameterize
	end
end
