Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "lists#index"

    get '/lists', to: 'lists#index'

    # get '/some_route', to: 'some_controller#some_action'

    # For listing all restaurants
    # get '/restaurants', to: 'restaurants#index'

    # For creating a new restaurant
    # post '/restaurants', to: 'restaurants#create'

    # For rendering a form for creating a new restaurant
    # get '/restaurants/new', to: 'restaurants#new'

    # For rendering a form for editing an existing restaurant
    # get '/restaurants/:id/edit', to: 'restaurants#edit'

    # For displaying a specific restaurant
    # get '/restaurants/:id', to: 'restaurants#show'

    # For updating a specific restaurant
    # patch '/restaurants/:id', to: 'restaurants#update'

    # For deleting a specific restaurant
    # delete '/restaurants/:id', to: 'restaurants#destroy'
end
