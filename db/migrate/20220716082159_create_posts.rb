class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :image
      t.string :link
      t.string :categories
      t.string :rocket
      t.integer :is_price
      t.integer :was_price
      t.integer :pct
      t.string :hashtag
      t.integer :ratings
      t.integer :ratings_codes
      t.integer :reviews

      t.string :info_01
      t.string :info_02
      t.string :info_03
      t.string :info_04
      t.string :info_05

      t.string :eva_title_01
      t.string :eva_title_02
      t.string :eva_title_03
      t.string :eva_title_04

      t.integer :eva_10
      t.integer :eva_11
      t.integer :eva_12

      t.integer :eva_20
      t.integer :eva_21
      t.integer :eva_22

      t.integer :eva_30
      t.integer :eva_31
      t.integer :eva_32

      t.integer :eva_40
      t.integer :eva_41
      t.integer :eva_42

      t.integer :doughnut_01
      t.integer :doughnut_02
      t.integer :doughnut_03
      t.integer :doughnut_04
      t.integer :doughnut_05

      t.text :body

      t.timestamps
    end
  end
end
