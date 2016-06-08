Rails.application.routes.draw do
  defaults format: 'json' do
    devise_for :users, defaults: { format: :json }, controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

    devise_scope :user do
      put '/users/confirmation' => 'confirmations#update'
    end

    resources :clients
    resources :orders
    resources :order_items, only: [:show]
    resources :products
  end
end