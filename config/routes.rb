Rails.application.routes.draw do


  
  root 'home#index'
  devise_for :organisations
  resources :organisations
  
end
