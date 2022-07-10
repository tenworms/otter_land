Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/parks', to: 'parks#index'
  get '/parks/:id', to: 'parks#show'
  get '/otters', to: 'otters#index'
  get '/otters/:id', to: 'otters#show'
  get '/parks/:park_id/otters', to: 'park_otters#index'
end
