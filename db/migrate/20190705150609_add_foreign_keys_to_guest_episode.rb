class AddForeignKeysToGuestEpisode < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :guest_episodes, :guests
    add_foreign_key :guest_episodes, :episodes
  end
end
