Rails.application.routes.draw do

  resources :pages

  root 'welcome#index'
  devise_for :admins
  resources :categories
  resources :articles

  # resources :sitemaps, :only => :index
  get "sitemaps" => "sitemaps#index"

end
