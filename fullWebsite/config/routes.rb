Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # create a root  the parameter to call the controller with the symbol # to call the action
  get '/salut', to:'pages#salut'
end
