Rails.application.routes.draw do
  root "home#top"
  
  get "/new" => "users#new" 
  post "/create" => "users#create"
  get "/:id" => "users#show"
  get "/:id/edit" => "users#edit"
  post "/:id/update" => "users#update"
  # For de/tails on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
