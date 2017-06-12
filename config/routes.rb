Rails.application.routes.draw do
  root to: "tickets#new"

  resources :tickets, only: [:new, :create]
end
