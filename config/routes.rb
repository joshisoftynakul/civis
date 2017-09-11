Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
  get 'users/show'


  devise_for :users
  resources :users
  resources :legislatures do
  	member do
  		put "like", to: "legislatures#upvote"
  	end
  end

  root "legislatures#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
