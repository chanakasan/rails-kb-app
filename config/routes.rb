Rails.application.routes.draw do
  resources :knowledgebases

  devise_for :users
  root 'home#index'
end
