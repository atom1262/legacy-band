class DropVenues < ActiveRecord::Migration
  def change
    drop_table :venues
  end
end
