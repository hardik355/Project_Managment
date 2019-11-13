Rails.application.routes.draw do
  
  resource :projects

  #admin route
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #devise all route
  devise_for :users

  #Devise set root page for localhost:3000
  devise_scope :user do 
    authenticated :user do 
      root to: "blogs#index"
    end
    unauthenticated :user do
      root to: "devise/sessions#new"
    end
  end

end
