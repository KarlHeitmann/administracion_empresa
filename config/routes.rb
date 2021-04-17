Rails.application.routes.draw do
  resources :tasks
  resources :employees, only: [:index, :show]
  devise_for :employees
  get 'sub_employees/:id', to: 'employees#sub_employees', as: 'sub_employees'

  root 'employees#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
