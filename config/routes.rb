Rails.application.routes.draw do
  get 'untranslated/index'
  resources :projects do 
    resources :properties
  end 

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'projects#index'
  get 'projects/:project_id/json' => 'json_out#index'
end
