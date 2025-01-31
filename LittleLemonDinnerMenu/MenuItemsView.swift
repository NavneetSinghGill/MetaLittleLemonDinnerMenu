
import SwiftUI

enum MenuSection {
    case food
    case drinks
}

struct MenuItemsView: View {
    
    @State var showModal =  false
    
    var foodItems: [MenuItem] {
        (1...12).map {
            MenuItem(name: "Food \($0)")
        }
    }
    
    var drinkItems: [MenuItem] {
        (1...8).map {
            MenuItem(name: "Drink \($0)")
        }
    }
    
    var dessertItems: [MenuItem] {
        (1...4).map {
            MenuItem(name: "Dessert \($0)")
        }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Food").font(.title3).padding(.horizontal)
                    showList(from: foodItems)
                    
                    Text("Drinks").font(.title3).padding(.horizontal)
                    showList(from: drinkItems)
                    
                    Text("Dessert").font(.title3).padding(.horizontal)
                    showList(from: dessertItems)
                }
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height*2)
            }
            .navigationTitle("Menu")
            .toolbar {
                Button {
                    showModal.toggle()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundStyle(.blue)
                }
            }
            .sheet(isPresented: $showModal) {
                MenuItemsOptionView(dismissScreen: $showModal)
            }
        }
    }
    
    func showList(from menuItems: [MenuItem]) -> some View {
        GridView(items: menuItems.map{
            MenuItemView(menuItem: $0)
        })
    }
    
}

#Preview {
    MenuItemsView()
}
