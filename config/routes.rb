Rails.application.routes.draw do
  get "/pets" => "pets#index"
  get "/pets/:id" => "pets#show"
end
