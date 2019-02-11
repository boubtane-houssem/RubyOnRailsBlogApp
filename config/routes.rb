Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :blogs

get 'about', to: 'blogs#about'

root "blogs#index"
end
