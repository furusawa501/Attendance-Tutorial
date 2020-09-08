Rails.application.routes.draw do
  get 'static_pages/top'
  # ↑ /static_pages/topというURLに対するGETリクエストを、
  #  StaticPagesコントローラのtopアクションと結びつけています。
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
