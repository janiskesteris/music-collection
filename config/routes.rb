MusicCollection::Application.routes.draw do

  devise_for :users

  resources :users, only: [] do
    resources :albums, except: [:show]
  end

  resources :albums, only: [:show]

  root :to => 'home#index'
end
