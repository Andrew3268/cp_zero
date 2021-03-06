class Post < ApplicationRecord
  acts_as_punchable

  has_and_belongs_to_many :tags

  after_create do
    post = Post.find_by(id: self.id)
    hashtags = self.hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        post.tags << tag
    end
  end
  
  before_update do
    post = Post.find_by(id: self.id)
    post.tags.clear
    hashtags = self.hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        post.tags << tag
    end
  end

  # def self.daily_picks
  #   Rails.cache.fetch('post_daily_picks', expires_in: 1.day) do
  #     self.all.shuffle.limit(2)
  #   end
  # end
  
end
