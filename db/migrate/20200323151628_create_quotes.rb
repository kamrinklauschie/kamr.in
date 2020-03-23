class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :author
      t.string :type

      t.timestamps
    end
  end
end
