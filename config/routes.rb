Rails.application.routes.draw do
  root 'static_pages#top'
  # ↑ ルートURL/に対するGETリクエストを、
  #  StaticPagesコントローラのtopアクションと結びつけています。

  # get 'static_pages/top'
  # ↑ /static_pages/topというURLに対するGETリクエストを、
  #  StaticPagesコントローラのtopアクションと結びつけています。
  get '/signup', to: 'users#new'
  
end
