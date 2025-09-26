Rails.application.routes.draw do
  resources :books do
    member do
      post :checkout, to: "books#checkout"
      post :checkin, to: "books#checkin"
    end
  end
end
