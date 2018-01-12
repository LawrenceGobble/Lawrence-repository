Rails.application.routes.draw do
  get 'welcome/index'

resources :test do
  resources :comments
end

  root 'welcome#index' 

  # resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
