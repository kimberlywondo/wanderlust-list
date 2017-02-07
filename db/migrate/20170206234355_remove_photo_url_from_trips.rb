class RemovePhotoUrlFromTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :photo_url, :string
  end
end
