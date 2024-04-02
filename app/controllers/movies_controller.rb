class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    @genre = MovieGender.find(@movie.movie_genders_id)
    @director = Director.find(@movie.directors_id)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(
      name: params[:movie][:name],
      release_year: params[:movie][:release_year].to_i,
      country: params[:movie][:country],
      length: params[:movie][:length],
      directors_id: params[:movie][:directors_id],
      movie_genders_id: params[:movie][:movie_genders_id]
    )

    if @movie.save
      flash.notice = 'Filme registrado com sucesso!'
      return redirect_to new_movie_path
    end
    flash.notice = 'Não foi possível concluir está operação. Tente novamente.'
    render :new
  end

  def edit
    @movie = Movie.find(params[:id])

  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(
      name: params[:movie][:name],
      release_year: params[:movie][:release_year].to_i,
      country: params[:movie][:country],
      length: params[:movie][:length],
      directors_id: params[:movie][:directors_id],
      movie_genders_id: params[:movie][:movie_genders_id],
    )
      flash.notice = 'Filme atualizado com sucesso!'
      return redirect_to edit_movie_path
    end
  flash.notice = 'Não foi possível concluir está operação. Tente novamente.'
  render :edit
  end

  def publish
    movie = Movie.find(params[:id])
    if movie.published?
        movie.draft!
        return redirect_to root_path
    end
    movie.published!

    redirect_to root_path

  end


end
