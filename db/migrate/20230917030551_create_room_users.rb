class CreateRoomUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :room_users do |t|

      t.references :user, null: false, foreigen_key: true
      t.references :room, null: false, foreigen_key: true
      t.timestamps

    end
  end
end
