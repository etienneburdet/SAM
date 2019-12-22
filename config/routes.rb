Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trainings, only: %i[index show]
  resources :plans, only: %i[index show]
  namespace :admin do
    resources :trainings, only: %i[new update destroy]
    resources :plans, only: %i[new update destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
