class PhotoPost < Post
  attr_accessible :photo_url
  validates :photo_url, :presence => true
end

