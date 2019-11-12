Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'blogs#index'
  
  devise_for :users
  
  resources :users do
    resources :blogs
  end

end
