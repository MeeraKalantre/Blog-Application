class AddUserIdToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :user_id, :integer
  end
  def self.down
   remove_column:post,:user_id
  end
end
