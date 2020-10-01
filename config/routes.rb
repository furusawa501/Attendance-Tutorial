Rails.application.routes.draw do

  # get 'static_pages/top'
  # ↑ /static_pages/topというURLに対するGETリクエストを、
  #  StaticPagesコントローラのtopアクションと結びつけています。
  
  root 'static_pages#top'
  # ↑ ルートURL/に対するGETリクエストを、
  #  StaticPagesコントローラのtopアクションと結びつけています。
  get '/signup', to: 'users#new'
  
  # ログイン機能
  get     '/login', to:  'sessions#new'
  post    '/login', to:  'sessions#create'
  delete  '/logout', to: 'sessions#destroy'
  
  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
    end
  end
end
