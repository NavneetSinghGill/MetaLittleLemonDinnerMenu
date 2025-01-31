
import SwiftUI

struct MenuItemView: View {
    var menuItem: MenuItem

    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Rectangle()
                    .background(menuItem.color)
                    .aspectRatio(1.5, contentMode: .fit)
                
                Text(menuItem.title)
            }
            NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)) {}
        }
    }
}
