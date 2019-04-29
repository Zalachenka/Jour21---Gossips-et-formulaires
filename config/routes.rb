Rails.application.routes.draw do
  get '/home', to: 'home#home'
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact'
end
