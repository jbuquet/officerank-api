class CreateOfficesPlayersJoinTable < ActiveRecord::Migration
  def change
    create_table :offices_players, :id => false do |t|
      t.integer :office_id
      t.integer :player_id
    end
  end
end
