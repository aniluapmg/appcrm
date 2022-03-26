class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.text :content
      t.integer :prospect_id

      t.timestamps
    end
    add_index :chats, [:prospect_id, :created_at]
  end
end
