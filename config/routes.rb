Rails.application.routes.draw do
  resources :tasks

  get "tasks/:id/mark", to: "tasks#mark_as_done", as: "mark_task"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
