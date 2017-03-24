Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :edit]
  resources :episodes, only: [:index]
  resources :users, only: [:show, :new, :create]
  resources :appearances

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'register', to: 'users#new'
end
