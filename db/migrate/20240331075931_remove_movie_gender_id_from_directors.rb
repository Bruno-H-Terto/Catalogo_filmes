class RemoveMovieGenderIdFromDirectors < ActiveRecord::Migration[7.1]
  def change
    remove_column :directors, :movie_gender_id, :string
  end
end
