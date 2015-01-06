BirdWatch::Application.routes.draw do
  devise_for :users
  get "welcome/index", :as => 'home'
  get "users/sign_up", :as => 'sign_up'
  
  # get "<url-slug>" => "controller_name#action"
  get "/clips/all" => "clips#show_all", :as => 'featured_birds'
  get "/clips/mockingbird" => "clips#show_mockingbird", :as => 'mockingbird'
  get "/clips/tuftedtitmouse" => "clips#show_tuftedtitmouse", :as => 'tuftedtitmouse'
  get "/clips/bluejay" => "clips#show_bluejay", :as => 'bluejay'

  resources :clips do
    resources :remarks
  end

  resources :users

  root "welcome#index"
end
