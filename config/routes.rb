Rails.application.routes.draw do
  get 'user/index' => 'user#index'
  get 'user/picture' => 'user#picture'
  get 'photo/index/:id' => 'photo#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
