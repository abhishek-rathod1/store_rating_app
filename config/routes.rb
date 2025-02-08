Rails.application.routes.draw do
  root to: "stores#index"  # Default root for visitors

  devise_for :users

  get "admin/dashboard", to: "admin#dashboard", as: "admin_dashboard"
  get "dashboard/normal_user_dashboard"
  get "dashboard/store_owner_dashboard"

  # Admin creates user
  get "admin/new_user", to: "admin#new_user", as: "new_user"
  post "admin/create_user", to: "admin#create_user", as: "create_user"
   # Routes for adding an admin user
   get "admin/create_admin", to: "admin#create_admin", as: "create_admin"
   post "admin/save_admin", to: "admin#save_admin", as: "save_admin"

  # root to: "stores#index"
  resources :stores
  get "admin/stores", to: "stores#admin_index", as: "admin_stores"
  resources :ratings

  get "admin/users", to: "admin#users", as: "admin_users"
  resources :users, only: [:index, :destroy]
  patch "users/:id/make_admin", to: "users#make_admin", as: "make_admin"
end
