# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p=Person.create(nombre: "Alfonso", apellido: "Aguilar", cedula: "0704841675", estado: "A")
User.create(login: "aruponse", password: "usuario", person: p, estado: "A") 
p=Person.create(nombre: "Juan", apellido: "Leon", cedula: "0702124199", estado: "A")
User.create(login: "car13cod", password: "usuario", person: p, estado: "A")
# curl -H "Content-Type: application/json" -X POST -d '{"login" : "aruponse","password":"usuario"}' http://localhost:8080/authenticate