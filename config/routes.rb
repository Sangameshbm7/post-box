Rails.application.routes.draw do
  resources :messages
  root to: "home#index"
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
