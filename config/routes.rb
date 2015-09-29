Rails.application.routes.draw do


  
  root 'home#index'
  devise_for :organisations, controllers: {
        sessions: 'organisations/sessions'
      }
  resources :organisations
  
end
