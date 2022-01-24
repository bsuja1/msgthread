Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    root "messages#index"
    
    resources :messages
    resources :msgthreads
    resources :users

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
