Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :races, only: [:index, :show]
      resources :riders, only: [:index, :show]
    end
  end

  get '*path', to: 'home#index'
end
