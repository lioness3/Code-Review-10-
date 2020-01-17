
  Rails.application.routes.draw do
    root to: 'projects#index'
    resources :products do
      resources :reviews
    end
  end
