Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    get 'customers/my_page' => 'customers#show', as: 'mypage'
    get 'customers/information/edit' => 'customers#edit', as: 'edit_information'
    patch 'customers/information' => 'customers#update', as: 'update_information'
    # 顧客の退会確認画面
    get 'customers/unsubscribe' => 'customers#unsubscribe'
    # 顧客の退会処理(ステータスの更新)
    patch 'customers/withdraw' => 'customers"withdraw'
    # カート内商品データ削除(全て)
    delete 'cart_items/destroy_all' => 'cart_items#destroy_all'
    # 注文情報確認画面
    post 'orders/confirm' => 'orders#confirm'
    # 注文完了画面
    get 'orders/complete' => 'orders#complete'
    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :update, :destroy, :create]
    resources :orders, only: [:new, :create, :index, :show]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
    resources :genres, only: [:show]


  end

  namespace :admin do
    root to: 'homes#top'
    get '/orders/customer_order/:customer_id' => 'orders#customer_order', as: "customer_order"
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]

  end
end
