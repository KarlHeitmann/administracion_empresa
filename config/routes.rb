Rails.application.routes.draw do
  devise_for :employees

  resources :employees, only: [:index, :show]
  post 'employees_bosses/:id', to: 'employees#bosses', as: 'employee_bosses'
  post 'employees_boss/:id', to: 'employees#add_boss', as: 'employee_boss'
  root 'employees#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
