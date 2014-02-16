BirdWatch::Application.routes.draw do
  # get "<url-slug>" => "controller_name#action"
  get "/clips/mockingbird" => "clips#show_mockingbird"

 
end
