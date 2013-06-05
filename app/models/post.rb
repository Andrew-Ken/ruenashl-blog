class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :status
  attr_accessible :body, :status_id, :title
  
  # Validations
  validates :title, :body, :status_id, :presence => true
  validates :title, :uniqueness => true
end