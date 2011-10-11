Rails.application.routes.draw do
  resources :contacts,
    :controller => 'contact_us/contacts',
    :only       => [:new, :create]
  match 'pages/contact_us' => 'contact_us/contacts#new'
end
