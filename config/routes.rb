BirdWatch::Application.routes.draw do
  get "welcome/index"
  # get "<url-slug>" => "controller_name#action"
  resources :clips
  resources :movies

  root "welcome#index"

  get "/clips/all" => "clips#show_all"
  get "/clips/mockingbird" => "clips#show_mockingbird"
  get "/clips/tuftedtitmouse" => "clips#show_tuftedtitmouse"
  

  get "/movies/nationalgeographicdocumentary" => "movies#show_nationalgeographicdocumentary"
end
