Rails.application.routes.draw do
  
  root 'static_pages#home' # => root_path
  get  '/test', to: 'static_pages#test'
  get  '/about',  to: 'static_pages#about'
  get  '/event',  to: 'static_pages#event'
  get  'menus/new' => 'menus#new'
  get  'menus/:id' => 'menus#show'
  post 'menus/:id/destroy' => 'menus#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post  '/likes/:menu_id/create',  to: 'likes#create'
  post  '/likes/:menu_id/destroy',  to: 'likes#destroy'
  get   'users/:id/likes',      to: 'users#likes'
  resources :users
  resources :menus
  resources :account_activations, only: [:edit]
  
end