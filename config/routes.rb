Rails.application.routes.draw do
  resources :dogs
  resources :employees

  root 'dogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
