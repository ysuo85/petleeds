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

   match 'animals/create' => 'animals#create', :via => :post
   match 'animals/read' => 'animals#read', :via => :get
   match 'animals/readUserFriendly' => 'animals#readUserFriendly', :via => :get

   match 'behavioral_traits/create' => 'behavioral_traits#create', :via => :post
   match 'behavioral_traits/read' => 'behavioral_traits#read', :via => :get

   match 'health_traits/create' => 'health_traits#create', :via => :post
   match 'health_traits/read' => 'health_traits#read', :via => :get

   match 'vaccinations/create' => 'vaccinations#create', :via => :post
   match 'vaccinations/read' => 'vaccinations#read', :via => :get
end
