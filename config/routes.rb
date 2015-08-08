Rails.application.routes.draw do
  #root :to => 'users#index'
   match 'users/create' => 'users#create', :via => :post
end
