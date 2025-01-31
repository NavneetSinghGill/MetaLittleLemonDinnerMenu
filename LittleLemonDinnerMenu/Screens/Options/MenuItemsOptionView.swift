
import SwiftUI

struct MenuItemsOptionView: View {
    
    @Binding var dismissScreen: Bool
    let lightGray = Color(red: 242/255, green: 242/255, blue: 242/255)
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    MenuItemOption(title: "Selected categories", options: ["Food", "Drink", "Desert"])
                    MenuItemOption(title: "Sory by", options: ["Most popular", "Price $-$$$", "A-Z"])
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .navigationTitle("Filter")
                .toolbar {
                    Button(action: {
                        dismissScreen.toggle()
                    }, label: {
                        Text("Done")
                            .bold()
                    })
                }
                .background(lightGray)
            }
            .background(lightGray)
        }
    }
}

struct MenuItemOption: View {

    var title: String
    var options: [String]
    var heightOfCell: CGFloat = 30

    var body: some View {
        Text(title.uppercased())
            .font(.caption)
            .foregroundStyle(.gray)
            .padding([.top, .leading], 20)

        List {
            ForEach(options, id: \.self) {
                Text($0)
                    .font(.body)
                    .frame(height: heightOfCell)
            }
        }
        .listStyle(.plain)
        .frame(height: heightOfCell*CGFloat(options.count+2))
    }

}
