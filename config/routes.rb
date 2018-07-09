Rails.application.routes.draw do
 

  root 'welcome#index'
  get 'welcome/about' => 'welcome#about'
  get 'welcome/contact' => 'welcome#contact'
  get 'menu' => 'menu'
  scope '/menu' do
    get 'lunch' => 'menu#lunch'  
    get 'dinner' => 'menu#dinner'
  end
  
    scope '/menu/dinner' do
      get 'salad' => 'dinner#salad'
      get 'calzone' => 'dinner#calzone'
      get 'side-orders' => 'dinner#sideorders'
      get 'dessert' => 'dinner#dessert'
      get 'beverages' => 'dinner#beverages'
      get 'cold-sandwiches' => 'dinner#cold_sandwiches'
      get 'hot-sandwiches' => 'dinner#hot_sandwiches'
      get 'chef-gourmet-pasta' => 'dinner#chef_gourmet_pasta'
      get 'pasta' => 'dinner#pasta'
      get 'gourmet-pizza' => 'dinner#gourmet_pizza'
      get 'pizza' => 'dinner#pizza'
    end
    
    scope '/menu' do
      get '/lunch/salad' => 'lunch#salad'
      get '/lunch/calzone' => 'lunch#calzone'
      # get 'side-orders' => 'lunch#sideorders'
      # get 'dessert' => 'lunch#dessert'
      # get 'beverages' => 'lunch#beverages'
      # get 'cold-sandwiches' => 'lunch#cold_sandwiches'
      # get 'hot-sandwiches' => 'lunch#hot_sandwiches'
      # get 'chef-gourmet-pasta' => 'lunch#chef_gourmet_pasta'
      get '/lunch/pasta' => 'lunch#pasta'
      # get 'gourmet-pizza' => 'lunch#gourmet_pizza'
      get '/lunch/pizza' => 'lunch#pizza'
    end
  
  
  
end

