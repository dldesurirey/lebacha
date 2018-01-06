Rails.application.routes.draw do
  resources :sections
  devise_for :admins
  root to: "pages#home"
  mount Attachinary::Engine => "/attachinary"
end
