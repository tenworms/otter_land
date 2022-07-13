Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/parks', to: 'parks#index'
  get '/parks/new', to: 'parks#new'
  post '/parks', to: 'parks#create'
  get '/parks/:id/edit', to: 'parks#edit'
  patch '/parks/:id', to: 'parks#update'
  get '/parks/:id', to: 'parks#show'
  get '/otters', to: 'otters#index'
  get '/otters/:id', to: 'otters#show'
  get '/otters/:id/edit', to: 'otters#edit'
  get '/parks/:park_id/otters', to: 'park_otters#index'
  get '/parks/:park_id/otters/new', to: 'park_otters#new'
  post '/parks/:park_id/otters', to: 'park_otters#create'
  post '/parks/:park_id', to: 'park_otters#create'
end
