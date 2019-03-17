Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  get 'articles/', to: 'articles#index'

  get 'articles/ajax_department', to: 'articles#ajax_department'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
