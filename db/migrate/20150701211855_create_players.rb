class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :email
      t.string :encrypted_password, null: false, default: ''
      t.string :username

      t.timestamps
    end

    add_index :players, :email, unique: true
    add_index :players, :username, unique: true
  end
end