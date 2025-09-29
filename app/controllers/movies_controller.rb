# app/controllers/movies_controller.rb
class MoviesController < ApplicationController

  def index
    # Armazena o parâmetro de ordenação para usar na view
    @sort_column = params[:sort_by]

    if @sort_column
      # Se um parâmetro de ordenação for fornecido, usa o método 'order'
      @movies = Movie.order(@sort_column)
    else
      # Caso contrário, apenas busca todos os filmes na ordem padrão
      @movies = Movie.all
    end
  end

  def show
    id = params[:id] # recupera o ID do filme da rota URI
    @movie = Movie.find(id) # procura o filme pelo ID único
  end

  def new
    # O método 'new' não precisa fazer nada além de renderizar a view new.html.erb
  end

  def create
    @movie = Movie.create(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

  private

  # O uso de "strong parameters" aumenta a segurança, permitindo apenas
  # os campos que especificamos aqui.
  def movie_params
    params.require(:movie).permit(:title, :rating, :release_date, :description)
  end

end

