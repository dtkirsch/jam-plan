JamPlan::Application.routes.draw do
  resources :jams

  resources :songs

  resources :venues

  resources :jams_users

  authenticated :user do
    root :to => 'jams#index'
  end
  root :to => "jams#index"
  devise_for :users,  :controllers => { :sessions => "users/sessions" }
  resources :users
end
