Rails.application.routes.draw do

  resources :artists, only: %i[show index new create edit update] do
    resources :songs, only: %i[show index]
  end
  resources :songs, only: %i[show index new create edit update]

  namespace :admin do
    resources :preferences, only: %i[new create show index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
