Rails.application.routes.draw do



  resources :movies
  get 'people/index'

  resources :people
  root "page#home"
  get 'home' => "page#home"
  get 'about_us' => "page#about_us"

#  get 'contact_us' => "page#contact_us"
#  post "contact_us" => "page#contact_us"

  match "contact_us" => "page#contact_us" ,  :via => [:post , :get]


  get 'page/newsletter'
  get 'blog' => "page#blog"
  get "calendar(/:year(/:month))" => "page#calendar" , :as => "calendar"
  get 'articles' => "page#articles"
  get 'login' => "page#login"

  get 'teach' => "ismail#teach"
  get 'speak' => 'ismail#speak'
  get 'dig' => 'ismail#dig'

  get 'say/hello'
  get "say/goodbye"
  get "say/something"


end
