class AddGendersToMovies < ActiveRecord::Migration[7.1]
  def change
    add_reference :movies, :movie_genders, null: false, foreign_key: true, default: 0
  end
end
