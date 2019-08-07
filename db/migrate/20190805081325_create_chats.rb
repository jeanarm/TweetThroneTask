class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :username
      t.string :mail
      t.timestamps

    end
  end
end
