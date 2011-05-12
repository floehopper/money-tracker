MoneyTracker::Application.routes.draw do
  root :to => "transactions#index"
  resources :transactions, :only => [:index, :edit, :update]
  resources :uploads,      :only => [:new, :create]
end
