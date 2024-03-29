Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api' do 
    get '/exercises', to: 'exercises#index'
    get '/targetmusclecategories', to: 'targetmusclecategories#index'
    get '/categories', to: 'categories#index'
    get '/fitnices', to: 'fitnices#index'
    post '/fitnices', to: 'fitnices#create'
    get '/fitnices/:id', to: 'fitnices#show'
    put '/fitnices/:id', to: 'fitnices#update'
    delete '/fitnices/:id', to: 'fitnices#destroy'
    scope '/auth' do 
      post '/sign_up', to: 'users#create'
      post '/sign_in', to: 'users#sign_in'
    end

  end
end
