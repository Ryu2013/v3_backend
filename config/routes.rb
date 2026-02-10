Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :shifts
    resources :names
    resources :shift_types

    get "/up" => "rails/health#show", as: :rails_health_check
  end
end
