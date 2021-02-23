Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes do
    resources :comments, only: [:create, :new]
  end
  resources :prototypes
  resources :users, only: :show
end
