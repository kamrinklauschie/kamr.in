class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :text
      t.string :string
      t.string :label
      t.string :string

      t.timestamps
    end
  end
end
