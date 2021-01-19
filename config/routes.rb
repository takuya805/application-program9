Rails.application.routes.draw do

  devise_for :users
  root :to =>"homes#top"
  get "home/about"=>"homes#about"
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]
  get 'message/:id' => 'messages#show', as: 'message'
  resources :messages, only: [:create]
end