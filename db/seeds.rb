Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all





Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "ginger ale")
Ingredient.create(name: "lime")
Ingredient.create(name: "tequila")
Ingredient.create(name: "vodka")
Ingredient.create(name: "bourbon")
Ingredient.create(name: "water")
Ingredient.create(name: "beer")
Ingredient.create(name: "soda")
Ingredient.create(name: "tonic water")

Cocktail.create(name: "Moscow Mule")
Cocktail.create(name: "Roy Rodgers")
Cocktail.create(name: "Gin and Tonic")
Cocktail.create(name: "Slippery Nipple")
Cocktail.create(name: "Irish Car Bomb")

Dose.create (
    [
        {
            ingredient_id: 99,
            cocktail_id: 113,
            description: "A very good drink",
        },
        {
            ingredient_id: 100,
            cocktail_id: 114,
            description: "Very sweet",
        }
    ]
)
