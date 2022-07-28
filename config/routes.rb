Rails.application.routes.draw do
  get 'about/show'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :users, :only => [:new, :create, :index]
  resources :tapedecks
  resources :albums
  resources :songs

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/profile' => 'pages#profile'
  get '/tapedeck' => 'tapedecks#index'
  get '/tapedeck/:id/add_album_page' => 'tapedecks#add_album_page', as: :tapedeck_add_album_page
  post '/tapedeck/:id/add_album' => 'tapedecks#add_album', as: :tapedeck_add_album
  get '/albums' => 'albums#index'
  get '/albums/:id/' => 'albums#new'
  get '/albums/:id/edit' => 'albums#edit'
  post '/album/:id/remove_album' => 'albums#remove_album', as: :album_remove_album


end