Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'



devise_for :users,  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
resources :users
resources :thoughts do
  resources :emotions, only: [:show,:new]
end


 root to: redirect('/thoughts')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
