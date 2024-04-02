class RemoveMovieGendersId2FromDirectors < ActiveRecord::Migration[7.1]
  def change
    remove_column :directors, :movie_genders_id, :string
  end
end
