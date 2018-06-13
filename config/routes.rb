Rails.application.routes.draw do
  get 'tops/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :happy_talks do
    collection do
      post :confirm
    end
  end
end
