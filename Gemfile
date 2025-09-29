# Gemfile

# Define a fonte de onde as gems (bibliotecas) serão baixadas.
source "https://rubygems.org"

# Especifica a versão do Ruby que este projeto utiliza.
# É uma boa prática travar na versão que você está usando para garantir consistência.
ruby "3.4.6"

# A dependência principal: o próprio framework Rails.
# Usaremos uma versão estável da família 7.1.x.
gem "rails", "~> 7.1.3"

# Banco de dados SQLite. É um banco de dados simples baseado em arquivo,
# perfeito para desenvolvimento local no Windows.
gem "sqlite3", "~> 1.7"

# Servidor web que o Rails usa por padrão em desenvolvimento.
gem "puma", "~> 6.4"

# Gerencia o JavaScript de uma maneira moderna, sem precisar de Node.js.
gem "importmap-rails"

# Ferramentas para criar aplicações rápidas e reativas.
gem "turbo-rails"
gem "stimulus-rails"

# Ferramenta para debugar o código. Fica ativa apenas nos ambientes
# de desenvolvimento e teste.
group :development, :test do
  gem "debug", "~> 1.9"
end

