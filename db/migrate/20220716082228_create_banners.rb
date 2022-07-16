class CreateBanners < ActiveRecord::Migration[6.1]
  def change
    create_table :banners do |t|
      t.string :b_title
      t.string :b_image
      t.string :b_link
      t.string :b_hashtags
      t.text :b_body

      t.timestamps
    end
  end
end
