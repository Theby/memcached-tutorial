# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Esto crea 200 entradas a la tabla Contact.
# Name: es el nombre y se crean nombres aleatorios.
# email: es el email y se crean mails aleatorios.
for i in 0..200
  Contact.create(name: (0...8).map { (65 + rand(26)).chr }.join, email: (0...8).map { (65 + rand(26)).chr }.join);
end