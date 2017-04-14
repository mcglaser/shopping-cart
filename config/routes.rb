Rails.application.routes.draw do
 
 root 'static_pages#home'

 resources :categories do
   resources :items
 end


  resources :items

end
