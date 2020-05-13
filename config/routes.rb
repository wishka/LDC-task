Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root             'static_page#welcome'
  get 'help'       => 'static_page#help'
  get 'about'      => 'static_page#about'
  get 'contact'    => 'static_page#contact'
  get 'signup'     => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
