Rails.application.routes.draw do
  resources :people
  devise_for :users
  resources :products
  resources :weddings
  resources :projects
  resources :dysphoria
  resources :misens
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: 'homes#index'

  get 'people', to: 'page#people'
  get 'weddings', to: 'page#weddings'
  get 'projects', to: 'page#projects'
  get 'dysphoria', to: 'page#dysphoria'
  get 'contact', to: 'page#contact'
  get 'mise_en_conformite', to: 'page#mise_en_conformite'
  get 'administration', to: 'page#administration'


end
