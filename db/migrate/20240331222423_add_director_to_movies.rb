class AddDirectorToMovies < ActiveRecord::Migration[7.1]
  def change
    add_reference :movies, :directors, null: false, foreign_key: true, default: 0
  end
end
