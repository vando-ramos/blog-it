class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :upvotes, default: 0, null: false
      t.integer :downvotes, default: 0, null: false
      t.boolean :is_bloggable

      t.timestamps
    end
  end
end
