Rails.application.routes.draw do
  get 'about/show'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :users, :only => [:new, :create, :index]
  resources :tapedecks
  resources :albums

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/profile' => 'pages#profile'
  get '/tapedeck' => 'tapedecks#index'
  get '/tapedeck/:id/add_album_page' => 'tapedecks#add_album_page', as: :tapedeck_add_album_page
  get '/albums' => 'albums#index'
  get '/albums/:id/' => 'albums#new'
  get '/albums/:id/edit' => 'albums#edit'


end