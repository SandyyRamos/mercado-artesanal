Order.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all
# Crear 4 categorías
categories = Category.create!([
  { name: 'Ceramics' },
  { name: 'Textiles' },
  { name: 'Wood' },
  { name: 'Metal' }
])

# Crear 5 usuarios
users = User.create!([
  { email: 'orelm@example.com', password: 'password123' }, # Vendedor 1
  { email: 'carlau@example.com', password: 'password123' }, # Vendedor 2
  { email: 'sebastianf@example.com', password: 'password123' }, # Vendedor 3
  { email: 'sandya@example.com', password: 'password123' },  # Comprador 1
  { email: 'claudiau@example.com', password: 'password123' }   # Comprador 2
])

# Crear productos de artesanías mexicanas

# Crear productos (10 para cada vendedor) y asignarles una categoría aleatoria

require "open-uri"

categoryc= Category.find_by(name: "Ceramics")
file = URI.parse("https://img.freepik.com/foto-gratis/cultura-mexicana-taza-pintada_23-2149672979.jpg?t=st=1733333963~exp=1733337563~hmac=1bd5b910095f34e80d07569ede7d727a35405c4cf5bd495fbd77cff49a5a1cb6&w=360").open
product = Product.new(name: "Hand-painted Talavera Pottery", description: "Traditional hand-painted pottery from Puebla, featuring intricate designs and vibrant colors.", price: 49, stock: 4, category: categoryc, user: User.first )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categoryt= Category.find_by(name: "Textiles")
file = URI.parse("https://static.wixstatic.com/media/7b8f62_db7a63845faa45d19bc1db4abbc0b17e~mv2.png/v1/fill/w_451,h_601,al_c,lg_1,q_85,enc_avif,quality_auto/Lele_portada-removebg-preview.png").open
product = Product.new(name: "Lele Querétaro Doll", description: "Traditional handmade Lele dolls from Querétaro, crafted with colorful textiles and intricate embroidery, symbolizing the region's cultural traditions and artistic craftsmanship.", price: 15, stock: 7, category: categoryt, user: User.second )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categoryw= Category.find_by(name: "Wood")
file = URI.parse("https://vivamexico.com/cdn/shop/files/www-vivamexico-com-alebrije-vibrant-lynx-cat-oaxacan-alebrije-wood-carving-42408497447195_1024x1024.jpg?v=1716463985").open
product = Product.new(name: "Oaxacan Wood Carvings", description: "Exquisite wooden animal carvings from Oaxaca, known for their bright colors and unique shapes.", price: 65, stock: 3, category: categoryw, user: User.second )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categoryt= Category.find_by(name: "Textiles")
file = URI.parse("https://vivamexico.com/cdn/shop/files/www-vivamexico-com-alebrije-large-huichol-beaded-jaguar-head-wixarika-folk-art-45476672241947_1024x1024.jpg?v=1716676884").open
product = Product.new(name: "Huichol Beadwork", description: "Exquisite wooden animal carvings from Oaxaca, known for their bright colors and unique shapes", price: 25, stock: 2, category: categoryt, user: User.third )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categorym= Category.find_by(name: "Metal")
file = URI.parse("https://carmelsilver.com/cdn/shop/files/vintage-los-castillo-taxco-mexican-jewelry-or-ornate-blue-glass-bracelet-carmel-fine-silver-jewelry-1.jpg?v=1710612021&width=823").open
product = Product.new(name: "Silver Jewelry from Taxco", description: "Finely crafted silver jewelry from Taxco, a town famous for its silver mining and artisans.", price: 120, stock: 5, category: categorym, user: User.first)
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categoryc= Category.find_by(name: "Ceramics")
file = URI.parse("https://media.rainpos.com/4907/Newer_bluer_Talavera_tiles.png").open
product = Product.new(name: "Talavera Tiles", description: "Hand-painted ceramic tiles from the Puebla region, often used for decorating walls and floors.", price: 30, stock: 2, category: categoryc, user: User.fourth )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categoryc= Category.find_by(name: "Ceramics")
file = URI.parse("https://www.estilomexicano.com.mx/cdn/shop/products/DSC_0645_1024x1024@2x.jpg?v=1598483888").open
product = Product.new(name: "Black Clay Pottery", description: "Traditional black pottery from Oaxaca, known for its smooth texture and reflective surface.", price: 30, stock: 2, category: categoryc, user: User.second )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categoryt= Category.find_by(name: "Textiles")
file = URI.parse("https://m.media-amazon.com/images/I/91jOB5wnlbL._AC_SX679_.jpg").open
product = Product.new(name: "Rebozos", description: "A traditional Mexican shawl worn by women, handwoven with intricate patterns and vibrant colors.", price: 45, stock: 3, category: categoryt, user: User.third )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categorym= Category.find_by(name: "Metal")
file = URI.parse("https://i.etsystatic.com/42921481/r/il/52237f/5872913744/il_794xN.5872913744_fu0o.jpg").open
product = Product.new(name: "Chiapas Amber Jewelry", description: "Beautiful jewelry made with amber, a gemstone found in the state of Chiapas.", price: 30, stock: 2, category: categorym, user: User.second)
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!

categoryt= Category.find_by(name: "Textiles")
file = URI.parse("https://artemayab.com/wp-content/uploads/2020/07/Mexicana-sola.jpg").open
product = Product.new(name: "Mexican Hammocks", description: "Traditional handwoven hammocks made from cotton or nylon, offering comfort and style.", price: 45, stock: 3, category: categoryt, user: User.fourth )
product.image.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
product.save!



# 10.times do |i|
#   category = categories.sample
#   product_name = product_names[category.name].sample # Elegir un nombre aleatorio de la categoría
#   products << Product.create!(
#     name: product_name,
#     description: "Handcrafted Mexican artisan product: #{product_name}",
#     price: rand(10..200), # Precios aleatorios entre 10 y 200
#     stock: rand(1..20),  # Cantidad aleatoria entre 1 y 20
#     user: users[i % 3],  # Asignamos los productos a los tres vendedores
#     category: category  # Asignamos la categoría al producto
#   )
# end


products = Product.all
# Crear órdenes (con productos aleatorios)
10.times do |i|
  order_product = products.first
  Order.create!(
    quantity: rand(1..5),
    price: order_product.price,
    total: order_product.price * rand(1..5),
    sale_date: Date.today,
    user: users[3 + i % 2],  # Alternamos entre los 2 compradores
    product: order_product
  )
end
