Rails.application.routes.draw do
  root to: "static_pages#root"
  devise_for :users, :controllers => {
    sessions: "user/sessions",
    registrations: "user/registrations",
    passwords: "user/passwords"
  }
  resources :users
  resources :exercise_names
  namespace :api, defaults: {format: :json} do
    resources :exercise_names, only: [:index, :show]
  end

end
