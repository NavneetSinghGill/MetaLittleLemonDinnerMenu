
import SwiftUI

struct MenuItemsView: View {
    
    @State var showModal =  false

    var body: some View {
        NavigationView {
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
