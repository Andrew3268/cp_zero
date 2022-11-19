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
ratings_codes = ["30", "35", "40", "45", "50"]
evaluation = ["92", "86", "73", "61", "53", "40", "32", "21"]
eva_title = ["title_01", "title_02", "title_03", "title_04", "title_05", "title_06", "title_07", "title_08"]
doughnut = ["90", "85", "80", "75", "70", "65", "60", "55", "50", "45", "40", "35", "30", "25", "20", "15", "10", "5"]
rocket =["yes"]
info = ["인포메이션_01", "인포메이션_02", "인포메이션_03", "인포메이션_04", "인포메이션_05", "인포메이션_06", "인포메이션_07", "인포메이션_08"]

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
    ratings_codes: ratings_codes.sample,
    reviews: Faker::Number.between(from: 1, to: 10000),
    body: Faker::Name.name,
    pct: pct.sample,
    categories: categories.sample,
    eva_10: evaluation.sample,
    eva_11: evaluation.sample,
    eva_12: evaluation.sample,
    eva_20: evaluation.sample,
    eva_21: evaluation.sample,
    eva_22: evaluation.sample,
    eva_30: evaluation.sample,
    eva_31: evaluation.sample,
    eva_32: evaluation.sample,
    eva_40: evaluation.sample,
    eva_41: evaluation.sample,
    eva_42: evaluation.sample,
    eva_title_01: eva_title.sample,
    eva_title_02: eva_title.sample,
    eva_title_03: eva_title.sample,
    eva_title_04: eva_title.sample,
    doughnut_01: doughnut.sample,
    doughnut_02: doughnut.sample,
    doughnut_03: doughnut.sample,
    doughnut_04: doughnut.sample,
    doughnut_05: doughnut.sample,
    rocket: rocket,
    info_01: info.sample,
    info_02: info.sample,
    info_03: info.sample,
    info_04: info.sample,
    info_05: info.sample

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

