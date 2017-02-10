Rails.application.routes.draw do
  get '/', to: 'cookies#index'

  get '/about', to: 'sections#about'
end
