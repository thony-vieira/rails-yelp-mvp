# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

Restaurant.create!([{
  name:'trinta e cincão',
  address: 'depois de umas ladeiras',
  category: 'belgian'
},
{
  name:'Spoleto',
  address: 'Qualquer shopping',
  category: 'italian'
},
{
  name:'china in box',
  address: 'qualquer esquina',
  category: 'chinese'
},
{
  name:'paris 6',
  address: 'centro',
  category: 'french'
},
  {name:    'La Nona di Lucca',
   address: 'moema',
   category: 'italian'
}])

p "Created #{Restaurant.count} restaurants"
