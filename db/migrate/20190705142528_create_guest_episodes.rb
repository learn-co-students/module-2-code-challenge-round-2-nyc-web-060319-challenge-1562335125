class CreateGuestEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_episodes do |t|
      t.integer :rating


      t.timestamps
    end
  end
end
