Rails.application.routes.draw do
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  resources :users, only: [:show, :edit]
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
end
