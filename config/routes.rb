Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :daily_reports, path: ''
  root 'd2man#home'
  get '/signup', to: redirect('/users/sign_up')
  resources :users
  resources :daily_reports,          only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
