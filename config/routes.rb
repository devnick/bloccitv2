Rails.application.routes.draw do

  resources :advertisements
  resources :questions
  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  post '/users/confirm' => 'users#confirm'

  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
