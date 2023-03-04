Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "users/registrations" }
  get 'dashboard/index'
  root 'home#index'
end
