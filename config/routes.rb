Rails.application.routes.draw do
  root to: 'pages#home'
  resources :movies, :lists do
    resources :bookmarks
  end  
end
