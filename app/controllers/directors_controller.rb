class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
    @movies = Movie.where(directors_id: @director.id)
  end
  
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(
      name: params[:director][:name],
      nationality: params[:director][:nationality],
      birthday: params[:director][:birthday],
      movie_genders_id: params[:director][:movie_genders_id]
    )

    if @director.save
      flash.notice = 'Salvo com sucesso'
      return redirect_to new_director_path
    end
    flash.notice = 'Não foi possível concluir está operação. Tente novamente.'
    render :new

  end

  def edit
    @director = Director.find(params[:id])
  end
  
  def update
    @director = Director.find(params[:id])
    if @director.update(
        name: params[:director][:name],
        nationality: params[:director][:nationality],
        birthday: params[:director][:birthday],
        movie_genders_id: params[:director][:movie_genders_id]
      )
      flash.notice = 'Atualizado com sucesso'
      return redirect_to new_director_path
    end
    flash.notice = 'Não foi possível concluir está operação. Tente novamente.'
    render :edit


  end

end
