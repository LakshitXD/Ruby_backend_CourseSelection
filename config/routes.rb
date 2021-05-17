Rails.application.routes.draw do
  resources :connectors
  devise_for :users
  resources :courses
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  post 'courses/enroll'
  post 'courses/deenroll'
  
end
