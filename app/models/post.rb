class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes
  
  def like_count
    likes.count
  end
  
  def comment_count
    comments.count
  end
  
  def humanized_time_ago
    time_ago_in_seconds = Time.now - self.created_at
    time_ago_in_minutes = time_ago_in_seconds / 60

    validates_presence_of :photo_url, :user

    if time_ago_in_minutes >= 60
      "#{(time_ago_in_minutes / 60).to_i} hours ago"
    else
      "#{time_ago_in_minutes.to_i} minutes ago"
    end
  end
  
end