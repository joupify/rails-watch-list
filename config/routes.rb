Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end


  # list routes
#   get 'lists/index'
#   get '/lists/', to: 'lists#index'
#   get '/lists/', to: 'lists#new', as: 'list_new'
#   post '/lists/', to: 'lists#create'

#   get '/lists/:id', to: 'lists#show', as: 'list'
#   get '/lists/:id', to: 'lists#edit', as: 'edit_list'
#   patch '/lists/:id', to: 'lists#update', as: 'list'
#   delete '/lists/:id', to: 'lists#destroy', as: 'list'

# # bookmark book

# get 'lists/index'

#   get '/lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'bookmark_new'
#   post '/lists/:id/bookmarks', to: 'bookmarks#create'

#   delete '/lists/:id/bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
