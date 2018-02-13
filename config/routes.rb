Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :friendships
      resources :chats
      
      mount ActionCable.server => '/cable'
    end
  end

end
