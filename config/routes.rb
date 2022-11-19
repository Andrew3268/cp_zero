Rails.application.routes.draw do
  root 'home#index'
  # root 'posts#index'
  # root 'banners#index'

  #hashtag
  get '/posts/hashtag/:name', to:'posts#hashtags'  
  get '/banners/b_hashtag/:name', to:'banners#hashtags'  


  # get 'home/index'
  resources :banners
  resources :posts


  # for hubs
  get 'hubs/top_views'
  get 'hubs/about_us'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
