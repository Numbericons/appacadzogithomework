class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :username, null: false
      t.integer :password_digest, null: false
      t.integer :session_token, null: false
      t.integer :password, limit: 5
    end
  end
end
