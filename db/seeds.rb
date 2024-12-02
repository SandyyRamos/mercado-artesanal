# Crear 4 categorías
categories = Category.create!([
  { name: 'Ceramica' },
  { name: 'Textiles' },
  { name: 'Madera' },
  { name: 'Metal' }
])

# Crear 5 usuarios
users = User.create!([
  { email: 'seller1@example.com', password: 'password123' }, # Vendedor 1
  { email: 'seller2@example.com', password: 'password123' }, # Vendedor 2
  { email: 'seller3@example.com', password: 'password123' }, # Vendedor 3
  { email: 'buyer1@example.com', password: 'password123' },  # Comprador 1
  { email: 'buyer2@example.com', password: 'password123' }   # Comprador 2
])

# Crear 30 productos (10 para cada vendedor) y asignarles una categoría aleatoria
products = []
10.times do |i|
  products << Product.create!(
    name: "Product #{i + 1}",
    description: "Description of product #{i + 1}",
    price: rand(10..100),
    stock: rand(1..20),
    user: users[i % 3],  # Asignamos los productos a los tres vendedores
    category: categories.sample  # Asignamos una categoría aleatoria
  )
end

# Crear 10 ventas (con compradores) y asignarles productos aleatorios
10.times do |i|
  Sale.create!(
    quantity: rand(1..5),
    price: products.sample.price,  # Precio aleatorio basado en el producto
    total: rand(10..100),
    sale_date: Date.today,
    user: users[3 + i % 2],  # Alternamos entre los 2 compradores
    product: products.sample
  )
end

puts "Se han creado 4 categorías, 5 usuarios, 30 productos y 10 ventas."
