Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :reviews do
    resources :comments
  end

  resources :snacks

  resources :employees

  get 'movie/index'
  # root 'movie#index'

  get 'crash/index'

  resources :advisors
  resources :grades
  resources :courses
  resources :students
  get 'dummy01/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
