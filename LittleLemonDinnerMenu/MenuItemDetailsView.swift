import SwiftUI

struct MenuItemDetailsView: View {

    var title: String
    let imageName = "Lemon"

    var body: some View {
        NavigationView {
            VStack(spacing: 5) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width/2)

                MenuItemDetail(title: "Price:", options: ["10.99"])
                MenuItemDetail(title: "Ordered:", options: ["1,000"])
                MenuItemDetail(title: "Ingredients:", options: ["spinach", "broccoli", "carrots", "pasta"])
            }
            .navigationTitle(title)
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
