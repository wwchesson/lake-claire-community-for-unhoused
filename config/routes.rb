Rails.application.routes.draw do
  resources :stages
  resources :progress_reports
  resources :dorms
  resources :activities
  resources :users
  
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
