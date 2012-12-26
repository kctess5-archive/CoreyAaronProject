class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.decimal :xcoord
      t.decimal :ycoord
      t.string :time

      t.timestamps
    end
  end
end
