class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates :body, :presence => true	
  has_many :comments
end
