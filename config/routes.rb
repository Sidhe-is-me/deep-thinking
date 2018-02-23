Rails.application.routes.draw do
resources :emotions
resources :thoughts
root to: redirect('/thoughts')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
