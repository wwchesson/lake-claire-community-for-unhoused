Rails.application.routes.draw do
  resources :dorms
  resources :activities
  resources :users
  
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
