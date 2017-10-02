Rails.application.routes.draw do

  get 'users/show'

  devise_for :users, :controllers => { :registrations => "registrations"}

  resources :users, only: [:show] do
    resources :applications, only: [:create, :destroy]
  end

  get 'welcome/index'
  get 'welcome/show'

  root 'welcome#index'

end
