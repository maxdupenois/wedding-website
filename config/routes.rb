Rails.application.routes.draw do
  root to: 'home#index'
  get 'venue', to: 'home#venue'
  get 'accomodation', to: 'home#accomodation'
  get 'gifts', to: 'home#gifts'

  resources :rsvps
end
