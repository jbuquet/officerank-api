Rails.application.routes.draw do
  scope defaults: { format: 'json' } do

    resources :offices
    resources :players
    resources :matches

  end
end
