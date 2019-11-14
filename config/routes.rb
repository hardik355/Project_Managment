Rails.application.routes.draw do
  
  #admin route
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #devise all route
  devise_for :users

  #Devise set root page for localhost:3000
  devise_scope :user do 
    authenticated :user do 
      root to: "projects#index"
    end
    unauthenticated :user do
      root to: "devise/sessions#new"
    end
  end

  #project Routes 
  resources :projects

  # Task Custom Route 
  resources :tasks
end
