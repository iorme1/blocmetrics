Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations"}

  resources :users, only: [:show] do
    resources :applications, only: [:create, :destroy, :show]
  end

  get 'welcome/index'
  root 'welcome#index'

  namespace :api, defaults: { format: :json} do
    match '/events', to: 'events#preflight', via: [:options]
    resources :events, only: [:create]
  end

end
