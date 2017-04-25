Rails.application.routes.draw do
  # Root
  root 'static_pages#home'

  # Dispatched by StaticPagesController
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  # Dispatched by UsersController
  get '/signup', to: 'users#new'
end