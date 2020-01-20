class CreateInteriorDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :interior_designs do |t|
      t.string :url
      t.string :string
      t.string :color
      t.string :string
      t.string :link
      t.string :string
      t.string :board
      t.string :string
      t.string :width
      t.string :integer
      t.string :height
      t.string :integer

      t.timestamps
    end
  end
end
