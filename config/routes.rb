Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homepage#index'

  scope path: 'api', as: 'api' do
    post "/login", to: "sessions#login"
    post "/signup", to: "sessions#signup"
  end
  
  get '*path', to: 'react#index', via: :all
end
