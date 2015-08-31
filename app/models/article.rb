class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	
	validates :title, presence: true, length: { 
		minimum: 5,
		maximum: 50 }
	validates :body, presence: true, length: { 
		minimum: 5,
		maximum: 9999 }
end
