Rails.application.routes.draw do
  #root :to => 'users#index'
   match 'users/create' => 'users#create', :via => :post

   match 'shelters/create' => 'shelters#create',:via => :post
   match 'shelters/read' => 'shelters#read', :via => :get
end
