
import SwiftUI

struct MenuItemView: View {
    var menuItem: MenuItem
    var tapClosure: ((MenuItem) -> Void)?

    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Rectangle()
                    .background(menuItem.color)
                    .aspectRatio(1.5, contentMode: .fit)
                
                Text(menuItem.title)
            }
            .onTapGesture {
                tapClosure?(menuItem)
            }
//            NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)) {}
        }
    }
}
