class DirectorsRegistredsController < ApplicationController
  def show
    @directors = Director.all
  end
end
