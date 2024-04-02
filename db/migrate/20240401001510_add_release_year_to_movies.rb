class AddReleaseYearToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :release_year, :integer
  end
end
