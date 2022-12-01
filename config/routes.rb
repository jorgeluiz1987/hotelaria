Rails.application.routes.draw do
   
  resources :hotel, only: [:new, :create]
 
end

