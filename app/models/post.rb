class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :status
  attr_accessible :body, :status_id, :title
end
