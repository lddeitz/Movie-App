Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors" => "actors#actors_action"

    get "/movies" => "movies#movie_action"

    get "/each-movie" => "movies#singlemovie_action"

    get "/take" => "movies#take"

    get "/pure" => "movies#pure"

  end
end
