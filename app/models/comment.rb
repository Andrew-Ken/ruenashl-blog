class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author_email, :author_name, :author_url, :body
  
  # Validations
  validates :author_name, :author_email, :body, :presence => true
  validates :author_email, :format => { :with => /@/, :message => "Your email address is not valid" }
end