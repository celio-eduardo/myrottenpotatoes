# Este arquivo descreve as mudanças no banco de dados para criar a tabela de filmes.
# O Rails executa isso para configurar o banco de dados.
class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'

      # Adiciona campos para que o Rails controle quando os filmes são criados/modificados.
      t.timestamps
    end
  end
end
