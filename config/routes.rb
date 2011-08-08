Rails.application.routes.draw do
  namespace :admin do
    resources :products do
      resources :variants do
        collection do
          get  :edit_multiple
          post :update_multiple
        end
      end
    end
  end
end
