class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :image
      t.string :link
      t.integer :is_price
      t.integer :was_price
      t.integer :pct
      t.string :hashtag
      t.integer :ratings
      t.integer :reviews

      t.text :body

      t.timestamps
    end
  end
end
