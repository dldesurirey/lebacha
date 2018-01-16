Rails.application.routes.draw do
  root to: "pages#home"

  get '/admin', to: 'dashboards#index'

  resources :dashboards, only: :index
  resources :sections, except: :show
  resources :testimonials, except: :show

  resources :booking_requests, only: [:index, :create, :destroy]

  devise_for :admins
  mount Attachinary::Engine => "/attachinary"
end
