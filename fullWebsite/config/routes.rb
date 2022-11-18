Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  get 'posts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # create a root  the parameter to call the controller with the symbol # to call the action
  # get '/salut', to:'pages#salut'
  #if we want to give a parameter to the action :
  #get '/salut/:name', to:'pages#salut'
  # we can give a name for a Path  : by using as
  get '/salut(/:name)', to:'pages#salut', as: 'salut'
  root to:'pages#home'
  resources :posts
  resources :categories
  
end
