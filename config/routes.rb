Rails.application.routes.draw do

  get 'genres/new'
  root :to => 'pages#home'
  get '/user' => 'pages#user'
  get '/contact-us' => 'pages#contact'
  get '/donation' => 'pages#donation'
  post '/donation' => 'pages#paypal'

  resources :users, :only => [:new,:create,:index]
  get '/event-add' => 'users#new_event'
  post '/event-add' => 'users#create_event'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :artists
  resources :events
  resources :roles, :except => [:edit]
  get '/events/:id/roles' =>  'events#roles', :as => 'event_roles'

  resources :genres, :only => [:new,:create,:destroy]
end
