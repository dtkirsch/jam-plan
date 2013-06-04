JamPlan::Application.routes.draw do
  resources :jams

  resources :songs

  resources :venues

  resources :jams_users

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
