# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

lime = Ingredient.create(name: "Lime Juice")
tequila = Ingredient.create(name: "Tequila")
pine = Ingredient.create(name: "Pinapple Juice")
rum = Ingredient.create(name: "White Rum")
vodka = Ingredient.create(name: "Vodka")
pepper = Ingredient.create(name: "Pepper")


margarita = Cocktail.create(name:"Margarita")
colada = Cocktail.create(name:"Pina Colada")
bloody = Cocktail.create(name:"Bloody Marry")


margarita.doses.create(description: "1 Oz", ingredient_id: lime.id)
margarita.doses.create(description: "1 shot", ingredient_id: tequila.id)

colada.doses.create(description: "20 ml", ingredient_id: pine.id)
colada.doses.create(description: "2 shots", ingredient_id: rum.id)

bloody.doses.create(description: "2 shot", ingredient_id: vodka.id)
bloody.doses.create(description: "table spoon", ingredient_id: pepper.id)

