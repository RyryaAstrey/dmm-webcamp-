Rails.application.routes.draw do
  get 'books/new'
  get 'top'=>'homes#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'show'
  get 'books/:id/edit' => 'books#edit', as: 'edit'
  patch 'books/:id' => 'books#update', as: 'update_list'
  delete 'book/:id' => 'books#destroy', as: 'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
