Rails.application.routes.draw do
  resources :oeuvres
  root to: "arts#index"
  
 
end
