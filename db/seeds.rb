Image.create!([
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5OU572Sjy-_mgWWNnuRKn0BXeUhNiMzau3Q&usqp=CAU.png", product_id: 1},
  {url: "https://www.toyhalloffame.org/sites/www.toyhalloffame.org/files/toys/square/stick_0.png", product_id: 2},
  {url: "https://i1.sndcdn.com/artworks-000042942638-4afcqq-t500x500.jpg", product_id: 3},
  {url: "https://i.ebayimg.com/images/g/wFUAAOSw64ZeFTJ7/s-l400.jpg", product_id: 4},
  {url: "https://atlas-content1-cdn.pixelsquid.com/assets_v2/189/1897225886768305870/jpeg-600/G03.jpg", product_id: 5},
  {url: "https://ultrasabers.com/wp-content/uploads/2018/07/Spectre-Front-Engraving.jpg", product_id: 1}
])
Category.create!([
  {name: "Weaponry"},
  {name: "Budget"}
])
Supplier.create!([
  {name: "Ultimate Quest Gear", email: "uqg@gmail.com", phone_number: "888-2847"},
  {name: "Hacksmith Inc", email: "hacksmith@gmail.com", phone_number: "555-2343"}
])
CartedProduct.create!([
  {user_id: 4, product_id: 1, quantity: 2, status: "purchased", order_id: 24},
  {user_id: 4, product_id: 2, quantity: 15, status: "purchased", order_id: 24},
  {user_id: 4, product_id: 2, quantity: 15, status: "carted", order_id: nil},
  {user_id: 5, product_id: 2, quantity: 15, status: "purchased", order_id: 25}
])
Product.create!([
  {name: "Superior Stick", price: "5.0", description: "What's brown and sticky? This stick, moreso than inferior sticks.", stock: 25, supplier_id: 2},
  {name: "Horn of Gondor", price: "350.0", description: "A sound of hope in the warring Middle Earth. Pretty much just annoying here, though.", stock: 1, supplier_id: 2},
  {name: "6 Sided Die", price: "5.0", description: "Pizza-related scam utility and creator of the darkest timeline.", stock: 12, supplier_id: 2},
  {name: "Lightsaber", price: "500000.0", description: "The tool of force wielders, this product can cut through almost anything. DISCLAIMER: blades are weightless with heavy handles and high momentum. We are not liable for any non-force user dismemberment.", stock: 2, supplier_id: 1},
  {name: "Master Ball", price: "150.0", description: "Can catch any pokemon without fail. We assume it works on animals too. Probably. DISCLAIMER: NOT FOR HUMAN USE, DON'T DO IT", stock: 1, supplier_id: 1}
])
Order.create!([
  {user_id: 3, subtotal: "10.0", tax: "0.9", total: "10.9"},
  {user_id: 3, subtotal: "150.0", tax: "13.5", total: "163.5"},
  {user_id: 4, subtotal: "2000000.0", tax: "180000.0", total: "2180000.0"},
  {user_id: 4, subtotal: "1000075.0", tax: "90006.75", total: "1090081.75"},
  {user_id: 4, subtotal: "1000075.0", tax: "90006.75", total: "1090081.75"},
  {user_id: 4, subtotal: "1000075.0", tax: "90006.75", total: "1090081.75"},
  {user_id: 5, subtotal: "75.0", tax: "6.75", total: "81.75"},
  {user_id: 5, subtotal: "0.0", tax: "0.0", total: "0.0"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 5, category_id: 2}
])
User.create!([
  {name: "Jane Existerson", email: "jes@gmail.com", password_digest: "$2a$12$N.hhSPa6uen2CQCj/3xoMe9IDHvR6Fujt2vX7UMzrZnoW4g/XuP0e", admin: false},
  {name: "John Realman", email: "jrm@gmail.com", password_digest: "$2a$12$cCW41zRtidv.6lz7tBkDsukkf.rFqPYsVdBljZMQHuGi948ZUnRzO", admin: true},
  {name: "Test", email: "test@gmail.com", password_digest: "$2a$12$2zWwVJNSTi6VnmaEYMe5Ie6MH/mTjx32dQlp.7syODY4pB68xcsCG", admin: false},
  {name: "testfrontend", email: "frontendtest@email.com", password_digest: "$2a$12$XZjocNjkuzJMLRzyc2m.ieMJ8BxeDdGG6bNxE.Awaw34xtYKpDv6m", admin: false}
])
