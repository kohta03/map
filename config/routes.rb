Rails.application.routes.draw do
  get 'user/user'

  get 'articles/index'

  devise_for :users
  get 'test/test'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles, only: [:create, :destroy]
  resources :user, only: [:create, :destroy]


end
