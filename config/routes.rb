BirdWatch::Application.routes.draw do
  # get "<url-slug>" => "controller_name#action"
  get "/clips/mockingbird" => "clips#show_mockingbird"

  get "/clips/tuftedtitmouse" => "clips#show_tuftedtitmouse"
end
