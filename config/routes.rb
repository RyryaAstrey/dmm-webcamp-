Rails.application.routes.draw do
  get 'books/new'
  get 'top'=>'homes#top'
  get 'books' => 'books#index'
  post 'lists' => 'books#create'
  get 'books/:id' => 'books#show'
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
