Rails.application.routes.draw do
  root 'naver_tvs#index'
  get 'naver_tvs/index'
  get 'naver_tvs/crawl'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
