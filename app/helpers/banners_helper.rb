module BannersHelper
  def render_with_bhashtags(b_hashtag)
    b_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/banners/b_hashtag/#{word.delete('#')}"}.html_safe
  end 
end
