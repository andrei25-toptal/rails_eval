Rails.application.routes.draw do
  root "articles#index"

  resources :users, only: [:index]
  resources :articles, only: [:index, :show, :new, :create]
end
