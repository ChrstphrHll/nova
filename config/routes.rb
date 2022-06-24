Rails.application.routes.draw do  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  root "home#index"
  resources :sparks, only: [:index, :show] do
    resources :active_powers
  end
  
  resources :pilots
  get '/pilots/:id/edit_sun', to: 'pilots#edit_sun'
  get '/pilots/:id/spark_select', to: 'pilots#spark_select'
end
