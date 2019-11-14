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
  get   '/projects', to: 'projects#index'
  post  '/projects',  to: 'projects#create'
  get   '/projects/new', to: 'projects#new'
  get   '/projects/:id/', to: 'projects#show', as: 'project'
  get   '/projects/:id/edit', to: 'projects#edit', as: 'edit_project'
  put   '/projects/:id', to: 'projects#update'
  post '/projects/:id', to: 'projects#update'
  delete '/projects/:id', to: 'projects#destroy'

  # Task Custom Route 
  get   '/tasks', to: 'tasks#index'
  post  '/tasks',  to: 'tasks#create'
  get   '/tasks/new', to: 'tasks#new'
  get   '/tasks/:id/', to: 'tasks#show', as: 'task'
  get   '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  put   '/tasks/:id', to: 'tasks#update'
  post '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

end
