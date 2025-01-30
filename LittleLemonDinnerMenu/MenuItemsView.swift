
import SwiftUI

enum MenuSection {
    case food
    case drinks
}

struct MenuItemsView: View {
    
    var menuItems: [MenuItem] {
        (1...5).map {
            MenuItem(name: "Food \($0)")
        }
    }
    
    var body: some View {
        getList(from: menuItems)
    }
    
    func getList(from menuItems: [MenuItem]) -> some View {
        GridView(items: menuItems.map{
            MenuItemView(menuItem: $0)
        })
    }
    
}

#Preview {
    MenuItemsView()
}
