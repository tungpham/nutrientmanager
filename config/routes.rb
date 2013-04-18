Nutrientmanager::Application.routes.draw do
  resources :allergies


  resources :mealrecipes


  resources :mealplans


  resources :meals


  resources :nutritionists


  resources :clients


  resources :recipes


  resources :userprofiles


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end