Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :comments
  get 'pages/info'
	root to: redirect('/ideas')
  resources :ideas
  resources :companies do 
    resources :staffs
  end
end
