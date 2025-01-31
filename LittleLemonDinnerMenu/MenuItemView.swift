
import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    
    let name: String
    let color = Color.black
}

struct MenuItemView: View {
    var menuItem: MenuItem

    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Rectangle()
                    .background(menuItem.color)
                    .aspectRatio(1.5, contentMode: .fit)
                
                Text(menuItem.name)
            }
            NavigationLink(destination: MenuItemDetailsView(title: menuItem.name)) {}
        }
    }
}

#Preview {
    MenuItemView(menuItem: .init(name: "test"))
}
