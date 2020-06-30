Rails.application.routes.draw do
  mount_devise_token_auth_for 'User',
                              at: 'api/v1/auth', skip: %i[omniauth_callbacks]

  namespace :api do
    namespace :v1 do
      resources :pings, only: %i[index], constraints: { format: 'json' }
    end
  end
end
