Rails.application.routes.draw do


  
  root 'home#index'
  devise_for :organisations, controllers: { registrations: "organisations" }
  resources :organisations
  
end
