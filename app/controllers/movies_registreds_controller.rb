class MoviesRegistredsController < ApplicationController
  def show
    @movies = Movie.all
  end
end
