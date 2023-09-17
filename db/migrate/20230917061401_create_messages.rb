class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|

      t.string     :content
      t.references :user,    null: false, foreign_keys: true
      t.references :room,    null: false, foreign_keys: true
      t.timestamps
    end
  end
end