Rails.application.routes.draw do
  root 'welcome#index'

  resources :players
  resources :games

  # Optional: keep this only if you really need a special root endpoint
  # get "/", to: "application#hello"
end
