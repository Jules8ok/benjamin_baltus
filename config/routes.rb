Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/q', as: 'rails_admin'
  resources :projects
  resources :weddings
  resources :people
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: 'page#homepage'

get 'architecture', to: 'page#architecture'
get 'dysphoria', to: 'page#dysphoria'
get 'contact', to: 'page#contact'
get 'mise_en_conformite', to: 'page#mise_en_conformite'
get 'administration', to: 'page#administration'


end
