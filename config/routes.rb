Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :students

  get "students/new", to: "students#new"
  get "students/create", to: "students#create"
  get "students/show", to: "students#show"
  get "students/delete/:id", to: "students#destroy"

end
