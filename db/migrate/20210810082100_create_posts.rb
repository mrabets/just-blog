class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end

    add_index :posts, %i[user_id created_at]
  end
end
