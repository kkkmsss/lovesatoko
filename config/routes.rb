Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  get 'tokyos/:tokyo_id/likes' => 'likes#create'
  get 'tokyos/:tokyo_id/likes/:id' => 'likes#destroy'
  root 'tokyos#index'
  resources :tokyos do
  end
  resources :likes, only: [:create, :destroy]

end
