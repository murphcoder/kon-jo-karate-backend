Rails.application.routes.draw do
  resources :categories
  resources :transactions
  resources :lesson_instructors
  resources :lesson_students
  resources :instructors
  resources :locations
  resources :lessons
  resources :students
  resources :parents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
