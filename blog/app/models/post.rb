class Post < ActiveRecord::Base
  attr_accessible :con, :title
  
  validates :title, :con, :presence => true
  validates :title, :length => {:minimum =>2}, :allow_blank => true
  validates :title, :uniqueness => { :message => 'already taken!!!'}
end
