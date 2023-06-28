Rails.application.routes.draw do
  devise_for :users,
      controllers: {:registrations =>"registrations"}
      as :user do
        get "/register", to: "registrations#new", as: "register"
      end
  
  root "home#index"

  resources :home
  resources :categories
  resources :items
  resources :parent_categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/category/", to: "category#index"
  # get "/category/:id", to: "category#show"
end
