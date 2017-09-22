Rails.application.routes.draw do

  resources :books, only: [:index, :show, :new, :create, :destroy, :edit, :update]

  get '/books', to: 'books#index'



  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/news', to: 'static_pages#news'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
