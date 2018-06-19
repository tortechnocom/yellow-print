Rails.application.routes.draw do
  if Figaro.env.rails_admin_path?
    mount RailsAdmin::Engine => "/#{Figaro.env.rails_admin_path}", as: 'rails_admin'
  end
  devise_for :users

  authenticated :user do
    root to: 'home#index'
  end

  resources :users, only: [:index, :show]
  get 'third', to: :show, controller: 'third'

  root to: redirect('/users/sign_in')
end
