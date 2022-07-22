class Banner < ApplicationRecord
  acts_as_punchable

  has_and_belongs_to_many :tags

  after_create do
    banner = Banner.find_by(id: self.id)
    bhashtags = self.b_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    bhashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        banner.tags << tag
    end
  end
  
  before_update do
    banner = Banner.find_by(id: self.id)
    banner.tags.clear
    bhashtags = self.b_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    bhashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        banner.tags << tag
    end
  end

end
