Rails.application.routes.draw do
  get 'movies_registreds/show'
  get 'movies_registreds/drafts'
  get 'directors_registreds/show'
  get 'genders/show'
  resources :movie_genders, only:[:show, :new, :create, :edit, :update]
  root to: 'home#index'
  resources :directors, only:[:show, :new, :create, :edit, :update]
  resources :movies, only:[:show, :new, :create, :edit, :update] do
  patch :publish, on: :member
  end
end
