Rails.application.routes.draw do
  resources :tasks
  resources :employees, only: [:index, :show]
  devise_for :employees

  get 'sub_employees/:id', to: 'employees#sub_employees',    as: 'sub_employees'
  get 'employee/:id/add_task', to: 'employees#tasks',        as: 'employee_tasks'
  post 'employee/:id/add_task', to: 'employees#task_create', as: 'employee_task'

  root 'employees#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
