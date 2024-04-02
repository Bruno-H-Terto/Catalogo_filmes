class AddColumnMovieGendersToDirectors < ActiveRecord::Migration[7.1]
  def change
    add_reference :directors, :movie_genders, null: false, foreign_key: true, default: 0
  end
end
