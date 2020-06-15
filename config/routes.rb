Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

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

    #CREATE
    post "/movies" => "movies#create"

    #DESTROY
    delete "/movies/:id" => "movies#destroy"

    #INDEX
    get "/movies" => "movies#index"

    #SHOW
    get "/movies/:id" => "movies#show"

    #UPDATE
    patch "/movies/:id" => "movies#update"


  end
end
