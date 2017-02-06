class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :city
      t.string :country
      t.string :photo_url

      t.timestamps
    end
  end
end
