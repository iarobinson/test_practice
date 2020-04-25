Rails.application.routes.draw do
  resources :experiences
  resources :sections
  root to: 'pages#index'

  resources :tests
  resources :questions

  resources :users
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
