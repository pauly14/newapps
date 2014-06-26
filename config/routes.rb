Rails.application.routes.draw do






  resources :contacts

  devise_for :admins
  devise_for :users
  root :to => 'visitors#index'
  get "contacts", :to => 'contacts#index'

end
