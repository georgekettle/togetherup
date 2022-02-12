Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :goals, only: [:show, :index, :new, :create]

  get 'account', to: 'accounts#account', as: :account
  # Defines the root path route ("/")
  root "pages#home"
end
