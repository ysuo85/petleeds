Rails.application.routes.draw do
  get 'fundraising/new'

  get 'sessions/new'

  #root :to => 'users#index'
   match 'users/create' => 'users#create', :via => :post
   match 'users/update' => 'users#update', :via => :post
   match 'users/list' => 'users#list', :via => :get
   match 'users/show' => 'users#show', :via => :get
   match 'users/destroy' => 'users#destroy', :via => :post

   match 'shelters/create' => 'shelters#create',:via => :post
   match 'shelters/read' => 'shelters#read', :via => :get

   match 'fundraising/create' => 'fundraising#create', :via => :post
   match 'fundraising/read' => 'fundraising#read', :via => :get

end
