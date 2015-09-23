Rails.application.routes.draw do
  get 'users/edit'
  get 'static_pages/edit'
  root to: 'static_pages#home'
  get 'signup',  to: 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users 
  resources :sessions, only: [:new, :create, :edit, :destroy]
  resources :microposts
end