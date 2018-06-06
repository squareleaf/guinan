Rails.application.routes.draw do
  root 'chihuahuas#index'

  resources :chihuahuas

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
