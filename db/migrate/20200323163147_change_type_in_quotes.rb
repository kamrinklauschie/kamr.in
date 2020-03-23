class ChangeTypeInQuotes < ActiveRecord::Migration[5.2]
  def change
    change_table :quotes do |t|
      t.rename :type, :quote_type
    end
  end
end
