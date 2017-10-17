Rails.application.routes.draw do
  root 'home#top'
  
  get "/new" => "users#new"
  post "users/create" => "users#create"
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
