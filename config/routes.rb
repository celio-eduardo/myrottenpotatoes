# config/routes.rb
# Este arquivo mapeia as URLs para os métodos do controller.
Rails.application.routes.draw do
  # A linha 'resources :movies' cria automaticamente todas as rotas RESTful
  # necessárias para o nosso recurso de filmes (index, show, new, create, etc.).
  resources :movies
end
