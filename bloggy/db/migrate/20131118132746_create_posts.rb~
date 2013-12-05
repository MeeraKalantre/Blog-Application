class CreatePosts < ActiveRecord::Migration
#  def self.up do
#     create_table :posts do |t|
#         t.string :title
#         t.text :body
#         t.datetime :published_at
#         t.text :comment

#         t.timestamps
#     end
#  end

#  def self.down do
#     drop_table :posts do |t|
#  end
#  end

  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.datetime :published_at
      t.text :comment     

      t.timestamps
    end
  end
end
