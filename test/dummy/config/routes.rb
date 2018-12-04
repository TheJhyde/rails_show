Rails.application.routes.draw do
  get '/code/*id', to: 'code#show'
  resources :code, only: [:show, :index]
  mount RailsShow::Engine => "/rails_show"
end
