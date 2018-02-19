Rails.application.routes.draw do
  devise_for :users
  resources :task_managers
  root 'task_managers#index'
end
