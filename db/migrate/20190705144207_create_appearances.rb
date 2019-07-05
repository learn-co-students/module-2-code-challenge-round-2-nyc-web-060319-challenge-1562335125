class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.references :guest, foreign_key: true
      t.references :episode, foreign_key: true
      t.integer :rating
    end
    add_index :appearances, :episode
  end
end
