Rails.application.routes.draw do
  
  get 'users/new'

  root 'static_pages#home' # => root_path
  get  '/test', to: 'static_pages#test'
  get  '/about',  to: 'static_pages#about'
  get  '/event',  to: 'static_pages#event'
  get  'menus/new' => 'menus#new'
  get  'menus/:id' => 'menus#show'
  post 'menus/:id/destroy' => 'menus#destroy'
  resources :menus

end