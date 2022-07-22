# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
I18n.reload!

images = [
    "https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/48e2/9ae7398e4c6824e0858e7a68ececd8885e33b0cfe1a346a2123863c1b75f.jpg",
    "https://thumbnail6.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/2020/06/23/20/1/da92e0cb-8887-4314-9339-353c9a35d2ee.jpg",
    "https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/3fc5/f79e9ca41266bef3fac765e97b5b0f89541e7c243a35cead96d78a132152.jpg",
    ]
hashtag = ["#패션", "#뷰티", "#식품", "#주방용품", "#생활용품", "#홈인테리어", "#가전디지털"]
categories = ["패션", "뷰티", "식품", "주방용품", "생활용품", "홈인테리어", "가전디지털"]
pct = ["10", "20", "30", "40", "50", "60", "70", "80", "90"]
ratings = ["1", "1.5", "2", "2.5", "3", "3.5", "4", "4.5", "5"]


20.times do 

  posts = Post.new(

    title: Faker::Commerce.product_name,
    image: images.sample,
    link: Faker::Name.name,
    is_price: Faker::Number.between(from: 1000, to: 10000),
    was_price: Faker::Number.between(from: 15000, to: 50000),
    hashtag: hashtag.sample,
    # ratings: Faker::Number.between(from: 1, to: 5),
    ratings: ratings.sample,
    reviews: Faker::Number.between(from: 1, to: 10000),
    body: Faker::Name.name,
    pct: pct.sample,
    categories: categories.sample
    )

  posts.save

end

10.times do
  banners = Banner.new(
    b_title: Faker::Commerce.product_name,
    b_sub_title: Faker::Commerce.product_name,
    b_image: images.sample,
    b_link: Faker::Name.name,
    b_hashtag: hashtag.sample,
    b_body: Faker::Name.name,
    b_categories: categories.sample
    )

  banners.save
end

