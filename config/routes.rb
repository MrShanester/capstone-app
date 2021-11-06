Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/planets" => "planets#show"
  get "/planets/:name" => "planets#index"
  post "/planets" => "planets#create"
  post "/planets/:name" => "planets#update"
  delete "/planets/:name" => "planets#destroy"
end
