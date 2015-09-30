Rails.application.routes.draw do


  
  root 'home#index'
  devise_for :organisations, controllers: { 
                        registrations: "organisations",
                        sessions: "organisations/sessions"
                        }
  resources :organisations
  
end
