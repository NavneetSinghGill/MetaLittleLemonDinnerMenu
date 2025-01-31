

struct MenuViewViewModel {

    var foodItems: [MenuItem] {
        (1...12).map {
            MenuItem(title: "Food \($0)",
                     menuCategory: .food,
                     orders: Int.random(in: 1...5),
                     price: Double.random(in: 1...20),
                     ingredients: [Ingredient.getRandomIngredient(), Ingredient.getRandomIngredient()])
        }
    }
    
    var drinkItems: [MenuItem] {
        (1...8).map {
            MenuItem(title: "Drinks \($0)",
                     menuCategory: .drink,
                     orders: Int.random(in: 1...5),
                     price: Double.random(in: 1...20),
                     ingredients: [Ingredient.getRandomIngredient(), Ingredient.getRandomIngredient()])
        }
    }
    
    var dessertItems: [MenuItem] {
        (1...4).map {
            MenuItem(title: "Dessert \($0)",
                     menuCategory: .dessert,
                     orders: Int.random(in: 1...5),
                     price: Double.random(in: 1...20),
                     ingredients: [Ingredient.getRandomIngredient(), Ingredient.getRandomIngredient()])
        }
    }
}
