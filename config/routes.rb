Rails.application.routes.draw do
  namespace :api do

    post 'user_token' => 'user_token#create'
    resources :bills, :users
  end
end
