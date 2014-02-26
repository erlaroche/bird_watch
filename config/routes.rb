BirdWatch::Application.routes.draw do
  devise_for :users
  get "welcome/index", :as => 'home'
  
  get "/clips/all" => "clips#show_all", :as => 'featured_birds'
  get "/clips/mockingbird" => "clips#show_mockingbird", :as => 'mockingbird'
  get "/clips/tuftedtitmouse" => "clips#show_tuftedtitmouse", :as => 'tuftedtitmouse'
  get "/clips/bluejay" => "clips#show_bluejay", :as => 'bluejay'
  # get "<url-slug>" => "controller_name#action"
  resources :clips do
    resources :remarks
  end

  root "welcome#index"
end
