Rails.application.routes.draw do
  # root 'home#index'
  root 'posts#index'
  # root 'banners#index'
  


  # get 'home/index'
  resources :banners
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end