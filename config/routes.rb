Rails.application.routes.draw do
   
  root  'welcome#index'
  get 'welcome/about' => 'welcome#about'
  get 'welcome/contact' => 'welcome#contact'
  
  get 'menu' => 'menu'
  
  scope '/menu' do
    get 'lunch' => 'menu#lunch'
    get 'dinner' => 'menu#dinner'
  end
  
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

