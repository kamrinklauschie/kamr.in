class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :pin_url
      t.string :img_url
      t.string :color
      t.string :board
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
