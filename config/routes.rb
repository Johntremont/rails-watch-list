Rails.application.routes.draw do
  root to: 'pages#home'
  resources :movies
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
