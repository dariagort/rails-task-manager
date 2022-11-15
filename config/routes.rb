Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  # Defines the root path route ("/")
  # root "articles#index"
  get     'tasks',          to: 'tasks#index'
  get     'tasks/:id/show', to: 'tasks#show', as: :show
  get     'tasks/new',      to: 'tasks#new', as: :new_task
  post    'tasks',          to: 'tasks#create'
end
