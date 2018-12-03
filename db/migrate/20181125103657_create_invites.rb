class CreateInvites < ActiveRecord::Migration[5.1]
  def change
    create_table :invites do |t|
      t.string :email
      t.string :token
      t.integer :sender_id
      t.integer :recipient_id
      t.references :user_group, foreign_key: true

      t.timestamps
    end
  end
end
