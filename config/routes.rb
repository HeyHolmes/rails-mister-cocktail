Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create] do
  resources :doses, only: [:create, :new, :destroy]
  end

end
