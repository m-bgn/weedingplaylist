Rails.application.routes.draw do
  root "songs#new"
  # resources :playlists, only: [:show]
  resources :songs, only: [:new,:create]
  # get "home", to: "pages#home"
  get "playlist", to: "playlists#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
