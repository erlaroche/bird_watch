BirdWatch::Application.routes.draw do
  devise_for :users
  get "welcome/index"
  # get "<url-slug>" => "controller_name#action"
  resources :clips do
    resources :remarks
  end
  
  resources :movies do
    resources :comments
  end

  root "welcome#index"

  get "/clips/all" => "clips#show_all"
  get "/clips/mockingbird" => "clips#show_mockingbird"
  get "/clips/tuftedtitmouse" => "clips#show_tuftedtitmouse"
  

  get "/movies/nationalgeographicdocumentary" => "movies#show_nationalgeographicdocumentary"
end
