Rails.application.routes.draw do
  get '/' => 'cookies#index'

  get '/about' => 'sections#about'

  get '/cookie/:id' => 'cookies#show'
end
