
import SwiftUI

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orders: Int { get set }
    var price: Double { get set }
    var ingredients: [Ingredient] { get set }
}
