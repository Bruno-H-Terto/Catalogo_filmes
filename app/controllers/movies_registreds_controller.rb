class MoviesRegistredsController < ApplicationController
  def show
    @moviesl = Movie.where("release_year <= ?", Date.today.year)
    @moviesn = Movie.where("release_year > ?", Date.today.year)
  end
end
