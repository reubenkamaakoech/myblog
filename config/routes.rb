Rails.application.routes.draw do
  resources :comments
  resources :categories
  devise_for :users, controllers: {
    sessions: 'user/sessions', 
    registrations: 'user/registrations'
  }

  resources :posts do
     resources:comments 
  end
  root "posts#index"
  get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")

end
