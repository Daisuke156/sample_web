Rails.application.routes.draw do
  
  root 'static_pages#home' # => root_path
  get  '/about',  to: 'static_pages#about'
  get  '/menu',  to: 'static_pages#menu'
  get  '/event',  to: 'static_pages#event'
  
end