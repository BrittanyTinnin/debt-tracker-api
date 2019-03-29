Rails.application.routes.draw do
  namespace :api do

    post 'user_token' => 'user_token#create'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :bills, :users
  end
end
