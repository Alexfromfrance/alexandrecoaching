Rails.application.routes.draw do
  get 'contacts/new', to: 'pages#home'
  get 'contacts/create', to: 'pages#home'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
