Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/animals" => "animals#index"
  get "/animals/:id" => "animals#show"
  post "/animals" => "animals#create"
  patch "/animals/:id" => "animals#update"
  delete "/animals/:id" => "animals#destroy"

  get "/pet_stores" => "pet_stores#index"
  get "/pet_stores/:id" => "pet_stores#show"
  post "/pet_stores" => "pet_stores#create"
end
