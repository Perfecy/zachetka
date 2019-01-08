Rails.application.routes.draw do
  # scope "(:locale)", locale:/#{available_locales.join("|")}/ do
  resources :lasts
  resources :fests
  resources :events
  get 'news/add', action: 'index', controller: 'books'
  get 'news/edit'
  resources :books
  resources :users
  get 'lab/index'
  get '/number', action: 'number', controller: 'lab'
  root 'sessions#index'
  get '/sign_up', action: 'sign_up', controller: 'sessions'
  post '/auth', action: 'auth', controller: 'sessions'
  get '/log_out', action:'logout', controller: 'sessions'
    # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
