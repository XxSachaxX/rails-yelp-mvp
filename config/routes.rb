Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:destroy]
end
