Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
  resources :users

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#delete'
  get 'register', to: 'users#new'
end
