Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :trips, except: [:new, :edit]
        resources :entries, except: [:new, :edit]
        resources :photos, except: [:new, :edit]
      end
    end 

end
