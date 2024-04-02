class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.date :release_year
      t.string :country
      t.string :length

      t.timestamps
    end
  end
end
