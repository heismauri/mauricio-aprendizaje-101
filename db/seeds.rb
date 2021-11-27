# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Usuarios de la empresa
user_admin = User.create(email: "admin@gmail.com", password: "291ABASD932")
user_one = User.create(email: "usuario1@gmail.com", password: "291ABASD934")
user_two = User.create(email: "usuario2@gmail.com", password: "281ABASD932")

# Generar prospectos
prospecto_one = Prospecto.new(
  first_name: "Zara",
  last_name: "Larsson",
  phone: "56912345678",
  email: "zaralarsson@gmail.com",
  status: 0
)
prospecto_one.user = user_admin
prospecto_one.save

prospecto_two = Prospecto.new(
  first_name: "Ariana",
  last_name: "Grande",
  phone: "56912345678",
  email: "arianagrande@gmail.com",
  status: 1
)
prospecto_two.user = user_one
prospecto_two.save

prospecto_three = Prospecto.new(
  first_name: "Loona",
  last_name: "The World",
  phone: "56912345678",
  email: "loonatheworld@gmail.com",
  status: 2
)
prospecto_three.user = user_two
prospecto_three.save

prospecto_four = Prospecto.new(
  first_name: "Denise",
  last_name: "Rosenthal",
  phone: "56912345678",
  email: "deniserosenthal@gmail.com",
  status: 0
)
prospecto_four.user = user_admin
prospecto_four.save

prospecto_five = Prospecto.new(
  first_name: "Red",
  last_name: "Velvet",
  phone: "56912345678",
  email: "redvelvet@gmail.com",
  status: 1
)
prospecto_five.user = user_one
prospecto_five.save

prospecto_six = Prospecto.new(
  first_name: "Im Na",
  last_name: "Yeon",
  phone: "56912345678",
  email: "imnayeon@gmail.com",
  status: 2
)
prospecto_six.user = user_two
prospecto_six.save

prospecto_seven = Prospecto.new(
  first_name: "Gon",
  last_name: "Freecss",
  phone: "56912345678",
  email: "gonfreecss@gmail.com",
  status: 0
)
prospecto_seven.user = user_admin
prospecto_seven.save

prospecto_eight = Prospecto.new(
  first_name: "Leorio",
  last_name: "Paladiknight",
  phone: "56912345678",
  email: "leoriopaladiknight@gmail.com",
  status: 1
)
prospecto_eight.user = user_one
prospecto_eight.save

prospecto_nine = Prospecto.new(
  first_name: "Killua",
  last_name: "Zoldyck",
  phone: "56912345678",
  email: "killuazoldyck@gmail.com",
  status: 2
)
prospecto_nine.user = user_two
prospecto_nine.save

prospecto_ten = Prospecto.new(
  first_name: "Hwang",
  last_name: "Yeji",
  phone: "56912345678",
  email: "hwangyeji@gmail.com",
  status: 1
)
prospecto_ten.user = user_admin
prospecto_ten.save

# Mensajes de negociación
conversation_ten_one = Conversation.new(message: "Creo que compraré al menos 20 productos")
conversation_ten_one.prospecto = prospecto_ten
conversation_ten_one.save

conversation_ten_two = Conversation.new(message: "Estoy muy contenta con la amabilidad de su servicio")
conversation_ten_two.prospecto = prospecto_ten
conversation_ten_two.save

conversation_nine = Conversation.new(message: "¿Se podría ver algun descuento?")
conversation_nine.prospecto = prospecto_nine
conversation_nine.save

conversation_eight = Conversation.new(message: "¿Tienen alguna tienda física en Talca?")
conversation_eight.prospecto = prospecto_eight
conversation_eight.save
