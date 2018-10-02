Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'owners#destroy'
  get    '/signup',  to: 'owners#new'
  resources :aliens
  resources :owners
  resources :toys, only: [:index]
  resources :planets, only: [:index, :show]
  resources :personalities, only: [:index, :show]
end
