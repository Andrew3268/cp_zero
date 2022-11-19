class HubsController < ApplicationController

  def top_views
    @most_hit = Post.most_hit(100.day.ago, 50)
  end

  def new_top
    @most_hit = Post.most_hit(100.day.ago, 50)
  end
end
