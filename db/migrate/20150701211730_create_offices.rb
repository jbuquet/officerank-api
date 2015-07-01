class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.integer :admin_id

      t.timestamps
    end
  end
end