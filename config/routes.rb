Rails.application.routes.draw do
  resources :books
  resources :users
  get 'home/top' => 'home#top'
  get 'home/about' => "home#about", as: "about"
  root to: "home#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
