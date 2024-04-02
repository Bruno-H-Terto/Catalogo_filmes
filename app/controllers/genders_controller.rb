class GendersController < ApplicationController
  def show
    @movie_gender = MovieGender.all
  end
end
