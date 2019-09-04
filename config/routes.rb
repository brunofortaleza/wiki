Rails.application.routes.draw do
  resources :instructions
  resources :guidances
  resources :systems
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'guidances#index'
end
