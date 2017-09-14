Rails.application.routes.draw do

  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/books', to: 'static_pages#books'

  get '/news', to: 'static_pages#news'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
