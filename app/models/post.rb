class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates :body, :presence => true	
  has_many :comments
  has_many :audits, :as => :auditable
  before_save :print_message
  after_save :create_audit

  #Scopes

  scope :untitled, where(:title => '')

  def self.authored_by(name)
    where(:author => name)
  end

  def self.in_the_last(date)
    where("created_at >= ?", Time.now - date)
  end


  #Callbacks
  private

  def print_message
    puts "About to save!"
  end

  def create_audit
    audits.create(
      :audited_changes => changes
    )
  end

end

 
