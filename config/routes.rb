Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/searched_gifs" => "searched_gifs#show"
  get "/trending_gifs" => "trending_gifs#index"  
end
