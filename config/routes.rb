require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:show, :new, :create]do
    resource :following_relationship, only: [:create]
  end
  resources :shouts, only: [:create]

  constraints Monban::Constraints::SignedIn.new do
    get "/", to: "dashboards#show", as: :dashboard
  end

  get "/sign_up", to: "users#new"

  root to: "sessions#new"
end
