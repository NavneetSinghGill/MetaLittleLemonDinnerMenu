import SwiftUI

struct MenuItemDetailsView: View {

    var menuItem: MenuItem
    let imageName = "Lemon"

    var body: some View {
        NavigationView {
            VStack(spacing: 5) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width/2)

                MenuItemDetail(title: "Price:", options: [menuItem.title])
                MenuItemDetail(title: "Ordered:", options: ["\(menuItem.orders)"])
                MenuItemDetail(title: "Ingredients:", options: menuItem.ingredients.map{$0.rawValue})
            }
            .navigationTitle(menuItem.title)
        }
    }
    
}

struct MenuItemDetail: View {

    var title: String
    var options: [String]

    var body: some View {
        Text(title)
            .font(.callout)
            .bold()

        VStack(spacing: 0) {
            ForEach(options, id: \.self) {
                Text($0)
                    .font(.callout)
            }
        }
    }

}
