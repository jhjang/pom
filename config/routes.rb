Pom::Application.routes.draw do
  get "categories/new"
  root "comments#index"

  get '/auth/:provider/callback', to: 'users#create' 
  get '/signout', to: 'users#destroy'

  resources 'users'
  resources 'comments'
  resources 'categories', only: [:index, :create] do
  end
end
