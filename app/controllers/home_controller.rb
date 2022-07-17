class HomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    @banners = Banner.all.order("created_at DESC")
    @latest_banners = Banner.last(1)
    @except_first_banners = Banner.order("id desc").offset(1).all
  end
end
