Rails.application.routes.draw do
  get 'dinner/salad'

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
    end
  
  
  
end

