Pom::Application.routes.draw do
  root "comments#index"

  get '/auth/:provider/callback', to: 'users#create' 
  get '/signout', to: 'users#destroy'

  resources 'users'
  resources 'comments'
end
