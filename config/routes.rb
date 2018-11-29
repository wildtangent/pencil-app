Rails.application.routes.draw do
  namespace :settings do
    resource :branding, controller: 'branding'
  end

  devise_for :users
  resources :leads

  get 'home/index'
  root to: "home#index"
end
