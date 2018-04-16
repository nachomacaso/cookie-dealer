Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'cookies#store'
  resources :cookies
  resources :orders

  resources :pictures do
    delete :destroy_multiple, action: :destroy, on: :collection
  end

  get '/about' => 'sections#about'
end
