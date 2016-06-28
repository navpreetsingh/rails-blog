Rails.application.routes.draw do
  root to: 'homes#show'

  resource :about, only: [:show]
  resources :articles, only: [:index]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
