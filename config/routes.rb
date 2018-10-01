Rails.application.routes.draw do
  resources :aliens
  resources :owners
  resources :toys, only: [:index, :show]
  resources :planets, only: [:index, :show]
  resources :personalities, only: [:index, :show]
end
