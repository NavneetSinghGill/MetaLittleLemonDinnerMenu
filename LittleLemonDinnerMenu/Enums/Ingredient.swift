
enum Ingredient: String {
    case spinach = "Spinach"
    case broccoli = "Broccoli"
    case carrot = "Carrot"
    case pasta = "Pasta"
    case tomatoSauce = "Tomato Sauce"

    static func getRandomIngredient() -> Self {
        switch Int.random(in: 1...5) {
        case 1: .spinach
        case 2: .broccoli
        case 3: .carrot
        case 4: .pasta
        case 5: .tomatoSauce
        default: .spinach
        }
    }
}
