
import SwiftUI

struct MenuItem: MenuItemProtocol, Identifiable {
    let id = UUID()
    
    var title: String
    
    var menuCategory: MenuCategory
    
    var orders: Int
    
    var price: Double
    
    var ingredients: [Ingredient]

    let color = Color.black
}
