
import SwiftUI

struct MenuItemsView: View {
    
    @State var isMenuItemsOptionViewPresented =  false
    @State var isMenuItemDetailsViewPresented =  false
    @State var menuItemToShowOnDetailScreen: MenuItem?

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Food").font(.title3).padding(.horizontal)
                    showList(from: MenuViewViewModel().foodItems)
                    
                    Text("Drinks").font(.title3).padding(.horizontal)
                    showList(from: MenuViewViewModel().drinkItems)
                    
                    Text("Dessert").font(.title3).padding(.horizontal)
                    showList(from: MenuViewViewModel().dessertItems)
                }
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height*2)
            }
            .navigationTitle("Menu")
            .toolbar {
                Button {
                    isMenuItemsOptionViewPresented.toggle()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundStyle(.blue)
                }
            }
            .sheet(isPresented: $isMenuItemsOptionViewPresented) {
                MenuItemsOptionView(dismissScreen: $isMenuItemsOptionViewPresented)
            }
            .navigationDestination(isPresented: $isMenuItemDetailsViewPresented) {
                if let menuItemToShowOnDetailScreen {
                    MenuItemDetailsView(menuItem: menuItemToShowOnDetailScreen)
                }
            }
        }
    }
    
    func showList(from menuItems: [MenuItem]) -> some View {
        GridView(items: menuItems.map{
            MenuItemView(menuItem: $0) { menuItem in
                menuItemToShowOnDetailScreen = menuItem
                isMenuItemDetailsViewPresented = true
            }
        })
    }
    
}

#Preview {
    MenuItemsView()
}
