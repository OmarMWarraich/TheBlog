class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.bigint :comments_counter
      t.bigint :likes_counter
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
