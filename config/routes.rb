Rails.application.routes.draw do
  root to: 'songs#new'
  resources :playlists, only: [:show]
  resources :songs, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
