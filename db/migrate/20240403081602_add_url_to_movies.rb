class AddUrlToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :srcimg, :string, default: 'https://cdn.pixabay.com/photo/2015/03/25/13/04/page-not-found-688965_960_720.png'
  end
end
