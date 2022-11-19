class HomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    @most_hit = Post.most_hit(30.day.ago, 10)
    @posts_random_over_half = Post.order("RANDOM()").limit(5)
    # @daily_pick = Post.daily_picks
    
    @banners = Banner.all.order("created_at DESC")
    @latest_banners = Banner.last(1)
    @except_first_banners = Banner.order("id desc").offset(1).limit(4)
  end
end