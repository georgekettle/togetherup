Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :goals, only: [:show, :index, :new, :create] do
    resources :logs, only: [:new, :create]
  end

  get 'account', to: 'accounts#account', as: :account
  get 'profile', to: 'pages#profile', as: :profile
  # Defines the root path route ("/")
  root "pages#home"
end
