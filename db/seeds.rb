# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# new_product = Product.create(name: "Lightsaber", price: 500000, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5OU572Sjy-_mgWWNnuRKn0BXeUhNiMzau3Q&usqp=CAU", description: "The tool of force wielders, this product can cut through almost anything. DISCLAIMER: blades are weightless with heavy handles and high momentum. We are not liable for any non-force user dismemberment.")
# new_product = Product.create(name: "Stick", price: 1, image_url: "https://www.toyhalloffame.org/sites/www.toyhalloffame.org/files/toys/square/stick_0.png", description: "What's brown and sticky?")
# new_product = Product.create(name: "Horn of Gondor", price: 350, image_url: "https://static.wikia.nocookie.net/lotr/images/4/4f/BoromirHorn.jpg/revision/latest/scale-to-width-down/249?cb=20070419194711", description: "A sound of hope in the warring Middle Earth. Pretty much just annoying here, though.")
# new_product = Product.create(name: "Master Ball", price: 150, image_url: "https://i.ebayimg.com/images/g/wFUAAOSw64ZeFTJ7/s-l400.jpg", description: "Can catch any pokemon without fail. We assume it works on animals too. Probably.")

Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5OU572Sjy-_mgWWNnuRKn0BXeUhNiMzau3Q&usqp=CAU.png", product_id: 1)
Image.create(url: "https://www.toyhalloffame.org/sites/www.toyhalloffame.org/files/toys/square/stick_0.png", product_id: 2)
Image.create(url: "https://i1.sndcdn.com/artworks-000042942638-4afcqq-t500x500.jpg", product_id: 3)
Image.create(url: "https://i.ebayimg.com/images/g/wFUAAOSw64ZeFTJ7/s-l400.jpg", product_id: 4)
Image.create(url: "https://atlas-content1-cdn.pixelsquid.com/assets_v2/189/1897225886768305870/jpeg-600/G03.jpg", product_id: 5)