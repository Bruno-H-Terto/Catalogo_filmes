class MoviesRegistredsController < ApplicationController
  def show

    @moviesl = Movie.where("release_year <= ? AND status = ?", Date.today.year, 2)
    @moviesn = Movie.where("release_year > ? AND status = ?", Date.today.year, 2)
  end

  def drafts
    @moviesl = Movie.where("release_year <= ? AND status = ?", Date.today.year, 0)
    @moviesn = Movie.where("release_year > ? AND status = ?", Date.today.year, 0)
  end
  
end
