class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :address, null: false
      t.string :date
      t.text :details
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
