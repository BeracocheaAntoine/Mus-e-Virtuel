Rails.application.routes.draw do
  resources :sculptures
  resources :peintures
  resources :musiques
  resources :architectures
  resources :oeuvres
  root to: "oeuvres#index"
  
 
end
