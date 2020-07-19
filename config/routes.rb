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

    # GET
    get "/actors" => "actors#index"

    # UPDATE
    patch "/actors/:id" => "actors#update"

    #SHOW
    get "/actors/:id" => "actors#show"

    # CREATE
    post "/actors" => "actors#create"

    #DESTROY  
    delete "/actors/:id" => "actors#destroy"


    #POST (for User)
    post "/users" => "users#create"

    #POST (for Sessions)
    post "/sessions" => "sessions#create"

    #INDEX
    get "/movies" => "movies#index"

    #SHOW
    get "/movies/:id" => "movies#show"

    #CREATE
    post "/movies" => "movies#create"

    #UPDATE
    patch "/movies/:id" => "movies#update"

    #DESTROY
    delete "/movies/:id" => "movies#destroy"

    #CREATE
    post "/moviegenres" => "movie_genres#create"


  end
end
