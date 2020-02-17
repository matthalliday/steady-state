Rails.application.routes.draw do
  root to: 'plans#index'

  resources :plans
  resources :weeks
  resources :sessions
end
