class Comment < ActiveRecord::Base
	# Validations 
	validates :body, length: { minimum: 5 }, presence: true

	# Relationships
  belongs_to :post
  
end
