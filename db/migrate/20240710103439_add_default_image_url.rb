class AddDefaultImageUrl < ActiveRecord::Migration[7.1]
  def change
    change_column_default :flats, :poster_url, "https://picsum.photos/2000"
  end
end
