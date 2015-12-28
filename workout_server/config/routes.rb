Rails.application.routes.draw do
  root to: "static_pages#root"
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :exercises
  resource :workouts, only: [:new, :create]
  namespace :api, defaults: {format: :json} do
    resources :exercises, only: [:index]
  end
end
