BirdWatch::Application.routes.draw do
  # get "<url-slug>" => "controller_name#action"
  get "/clips/mockingbird" => "clips#show_mockingbird"
  get "/clips/tuftedtitmouse" => "clips#show_tuftedtitmouse"
  get "/clips/bluejay" => "clips#show_bluejay"

  get "/movies/nationalgeographicdocumentary" => "movies#show_nationalgeographicdocumentary"
  # get "/movies/nationalgeographicdocumentary2" => "movies#show_nationalgeographicdocumentary2"
end
