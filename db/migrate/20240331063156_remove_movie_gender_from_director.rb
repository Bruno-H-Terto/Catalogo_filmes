class RemoveMovieGenderFromDirector < ActiveRecord::Migration[7.1]
  def change
    remove_column :directors, :movie_gender, :string
  end
end
