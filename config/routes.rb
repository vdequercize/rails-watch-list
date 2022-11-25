Rails.application.routes.draw do
 # get 'bookmarks/new'
 # get 'bookmarks/create'
 # get 'bookmarks/destroy'
 # get 'movies/index'
 # get 'movies/show'
 # get 'movies/new'
 # get 'movies/create'
 # get 'lists/index'
 # get 'lists/show'
 # get 'lists/new'
 # get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "movies#index"
 # get "/movies", to: "movies#index"
  get "/movies/:id", to: "movies#show", as: :movie

  resources :lists, :only => [:index, :new, :create, :show] do
    resources :bookmarks, :only => [:new, :create]
  end

  delete "bookmark/:id", to: "bookmarks#destroy", as: :bookmark

 #  get "/lists/:id/bookmarks/new", to: "bookmarks#new"
 #  post "lists/:id/bookmarks", to: "bookmarks#create"
 #  delete "bookmarks/:id", to: "bookmars#destroy"
end
