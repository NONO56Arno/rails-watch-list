Rails.application.routes.draw do
  root 'lists#index'
  get 'movies/show'
  get 'movies/index'
  get 'movies/new'
  get 'movies/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  resources :lists do
    resources :bookmarks, only: [:index, :new, :create]
  end
  resources :bookmarks, only: :destroy
  # Defines the root path route ("/")
  # root "articles#index"
end
