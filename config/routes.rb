Rails.application.routes.draw do
  resources :prospects
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'prospects#index'
end
