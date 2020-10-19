Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :users, :only => [:new,:create,:index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :artists
  resources :events
  resources :roles
  get '/events/:id/roles' =>  'events#roles', :as => 'event_roles'
  get 'events/:id/roles/:id2' => 'events#roleshow', :as => 'each_role' 
end
