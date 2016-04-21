class User < ActiveRecord::Base
  has_many :comments
  has_many :likes
  has_many :posts
  
  validates_presence_of :email, :avatar_url, :username, :password
  validates_uniqueness_of :email, :username
  
end