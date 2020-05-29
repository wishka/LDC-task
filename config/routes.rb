Rails.application.routes.draw do
  get 'categories/new'
  get 'products/show'
  get 'product/index'
  get 'product/edit'
  get 'password_resets/new'
  get 'password_resets/edit'
  root             'static_page#welcome'
  get 'welcome'         => 'product#show'
  get 'monday'          => 'product#monday'
  get 'tuesday'         => 'product#tuesday'
  get 'wednesday'       => 'product#wednesday'
  get 'thursday'        => 'product#thursday'
  get 'friday'          => 'product#friday'
  get 'saturday'        => 'product#saturday'
  get 'sunday'          => 'product#sunday'
  get 'help'            => 'static_page#help'
  get 'about'           => 'static_page#about'
  get 'contact'         => 'static_page#contact'
  get 'orders'          => 'static_page#orders'
  get 'signup'          => 'users#new'
  get    'login'        => 'sessions#new'
  post   'login'        => 'sessions#create'
  delete 'logout'       => 'sessions#destroy'
  get 'cart'            => 'cart#index'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :categories
  resources :products

end
