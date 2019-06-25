Rails.application.routes.draw do
  match '/contacts',     to: 'pages#home',             via: 'get'
  resources "contacts", only: [:new, :create]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
