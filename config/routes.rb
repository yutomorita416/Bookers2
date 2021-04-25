Rails.application.routes.draw do
  root to: "homes#top"
  get "home/about" => "homes#about"
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update, :create]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit]
  
end
