Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :users, :only => [:new, :create, :index]

  resources :tapedecks, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/profile' => 'pages#profile'

  get'/tapedeck' => 'tapedecks#index'

end