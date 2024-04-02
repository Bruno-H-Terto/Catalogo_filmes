class CreateMovieGenders < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_genders do |t|
      t.string :option

      t.timestamps
    end
  end
end
