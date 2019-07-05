class AddAppearancesTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :episodes, :guests, table_name: :appearances do |t|
      t.integer :rating
    end
  end
end
