Rails.application.routes.draw do
  get 'gossip/gossip'
  get 'welcome/:user_entry', to: 'welcome#first_name'
  get '/home', to: 'home#display_name'
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact'
end
