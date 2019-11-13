Rails.application.routes.draw do
  
  #project Routes 
  get   '/projects', to: 'projects#index'
  post  '/projects',  to: 'projects#create'
  get   '/projects/new', to: 'projects#new'
  get   '/projects/:id/', to: 'projects#show', as: 'project'
  get   '/projects/:id/edit', to: 'projects#edit', as: 'edit_project'
  put   '/projects/:id', to: 'projects#update'
  post '/projects/:id', to: 'projects#update'
  delete '/projects/:id', to: 'projects#destroy'
  # resource :projects

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

end
