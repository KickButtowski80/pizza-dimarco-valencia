Rails.application.routes.draw do
   
  root  'welcome#index'
  get 'welcome/about' => 'welcome#about'
  get 'welcome/contact' => 'welcome#contact'
  
  get 'menu' => 'menu'
  
  scope '/menu' do
    get 'lunch' => 'menu#lunch'
    get 'dinner' => 'menu#dinner'
  end
  
  
end

