class MovieGendersController < ApplicationController
  def show
    @movie_gender = MovieGender.find(params[:id])
    @movies = Movie.where(movie_genders_id: @movie_gender.id)
  end
  
  def new
    @movie_gender = MovieGender.new
  end

  def create
    @movie_gender = MovieGender.new(
      option: params[:movie_gender][:name]
    )

    if @movie_gender.save
      flash.notice = 'Salvo com sucesso!'
      return redirect_to new_movie_gender_path
    end
    flash.notice = 'Não foi possível concluir está operação. Tente novamente.'
    render :new

  end

  def edit
    @movie_gender = MovieGender.find(params[:id])
  end

  def update
    @movie_gender = MovieGender.find(params[:id])

    if @movie_gender.update(
      option: params[:movie_gender][:name]
    )
      flash.notice = 'Atualizado com sucesso!'
      return redirect_to edit_movie_gender_path
    end
    flash.notice = 'Não foi possível concluir está operação. Tente novamente.'
    render :edit
  end

end
