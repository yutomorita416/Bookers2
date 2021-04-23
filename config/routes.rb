Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit]
  devise_for :users
  root to: "homes#top"
end
