class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :status
  attr_accessible :body, :status_id, :title, :tag_list
   validates :title, :body, :status_id, :presence => true
  validates :title, :uniqueness => true
    
    has_attachment :accept: [:jpg, :png, :gif]
    has_attachments  :photos, maximum: 1
  end
  
  # This will enable all the of the tag helpers and methods for Posts
  acts_as_taggable
  
  def is_published?
    if self.status.name == "Published"
      return true
    end
  end
end