Rails.application.routes.draw do
  root to: "tickets#new"

  resources :tickets, only: [:new, :create]
  get "/tickets/thanks", to: "tickets#thanks", as: :ticket_thanks
end
