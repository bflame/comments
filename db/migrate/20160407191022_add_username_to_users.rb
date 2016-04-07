class AddUsernameToUsers < ActiveRecord::Migration
  def change # any methods are translated to SQL and modified to database, so I don't need to learn some new language! WooHoo.
    add_column :users, :username, :string
    add_index :users, :username, unique: true # Users are index so search for specific user can be done much quicker, usernames are also unique so no overlaps
  end
end
