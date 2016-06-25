Rails.application.routes.draw do
  root to: 'home#index'
  get 'venue', to: 'home#venue'
  get 'accomodation', to: 'home#accomodation'
  get 'gifts', to: 'home#gifts'
  get 'thankyou', to: 'home#thankyou'

  resources :rsvps
end
