Rails.application.routes.draw do
  root 'static_page#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'static_page/help'
  get 'static_page/about'
  get 'static_page/contact'
end
