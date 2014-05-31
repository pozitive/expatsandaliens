Rails.application.routes.draw do

  root 'welcome#index'
  devise_for :admins
  resources :categories
  resources :articles

end
