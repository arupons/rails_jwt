Rails.application.routes.draw do
  resources :items
  post 'authenticate', to: 'authentication#authenticate'
  resources 'users'
end
