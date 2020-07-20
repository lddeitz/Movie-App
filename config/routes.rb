Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "api/movies/:id" => "movies#show"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # get "/actors" => "actors#actors_action"

    # get "/movies" => "movies#movie_action"

    # get "/each-movie" => "movies#singlemovie_action"

    # get "/take" => "movies#take"

    # get "/pure" => "movies#pure"

    # #Query Parameters

    # get "/single-actor" => "actors#single_actor"

    # #URL Segment Parameter 

    # get "/single-actor-segment/:first_name" => "actors#single_actor"

    # #Body Parameter 

    # post "/single-actor-body" => "actors#single_actor"

    #Actors Routes
    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"
    
    #POST (for User)
    post "/users" => "users#create"

    #POST (for Sessions)
    post "/sessions" => "sessions#create"

    #Movies Routes
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    #Movie Genres
    post "/moviegenres" => "movie_genres#create"


  end
end
