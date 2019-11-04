Rails.application.routes.draw do
  resources :reviews do
    resources :comments
  end

  resources :employees

  get 'movie/index'
  root 'movie#index'

  get 'crash/index'

  resources :advisors
  resources :grades
  resources :courses
  resources :students
  get 'dummy01/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
