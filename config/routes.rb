Rails.application.routes.draw do
  resources :stages
  resources :progress_reports
  resources :dorms
  resources :activities
  resources :users

  post "/signup", to: "users#create"
  get "/me", to: "users#authenticateuser"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
