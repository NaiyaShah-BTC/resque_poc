require 'resque/server'

Rails.application.routes.draw do
  resources :articles
  root 'articles#index'

  # get 'articles/create'
  mount Resque::Server, :at => "/resque"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
