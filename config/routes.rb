Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "window#index"
  resources :tweets, only:[:index]
  resources :blog, only:[:index, :new, :create, :show, :edit, :update, :destroy] 
end
