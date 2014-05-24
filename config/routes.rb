Rails.application.routes.draw do

  root 'welcome#index'
  resources :categories

  resources :articles

end
