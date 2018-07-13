Rails.application.routes.draw do
  root to:'tops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:create, :destroy, :index]

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :contacts

  resources :happy_talks do
    collection do
      post :confirm
    end
  end
end
