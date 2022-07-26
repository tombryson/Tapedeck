Rails.application.routes.draw do
  get 'albums/index'
  get 'albums/new'
  get 'albums/edit'
  get 'albums/show'
  get 'albums/destroy'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :users, :only => [:new, :create, :index]

  # resources :tapedecks, :only => [:new, :create]
  resources :tapedecks

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/profile' => 'pages#profile'

  get '/tapedeck' => 'tapedecks#index'

end