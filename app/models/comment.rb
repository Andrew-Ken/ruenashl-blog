class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author_email, :author_name, :author_url, :body
end
