Rails.application.routes.draw do

  root to: 'pages#home'
  
  
  devise_for :users
  
    namespace :api, defaults: { format: :json } do
    namespace :v1 do
      mount_devise_token_auth_for "User", at: "auth",
        controllers: {
          sessions: 'api/v1/devise_token_auth/sessions'
        }
      resources :appointments, only: [ :index, :show, :create, :update, :destroy ]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
