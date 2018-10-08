# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


def create_product
  Product.create(
    nsn: Faker::Number.number(10),
    part_number: Faker::Alphanumeric.alphanumeric(6),
    name: Faker::Commerce.product_name
  )
end

100.times {create_product}


