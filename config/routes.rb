Rails.application.routes.draw do
  get 'employees/index'
  devise_for :employees

  root 'employees#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
