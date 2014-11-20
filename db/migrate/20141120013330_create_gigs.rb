class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :address, null: false
      t.string :date
      t.text :details
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
