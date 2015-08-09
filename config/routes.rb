Rails.application.routes.draw do
  get 'fundraising/new'

  get 'sessions/new'

  #root :to => 'users#index'
   match 'users/create' => 'users#create', :via => :post
   match 'users/update' => 'users#update', :via => :post

   match 'shelters/create' => 'shelters#create',:via => :post
   match 'shelters/read' => 'shelters#read', :via => :get

   match 'fundrasing/create' => 'fundraising#create', :via => :post
   match 'fundrasing/read' => 'fundraising#read', :via => :get

end
