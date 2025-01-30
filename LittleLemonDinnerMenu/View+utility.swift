
import SwiftUI

extension View {
    func readHeight(height: Binding<CGSize>) -> some View {
        modifier(ReadDimensions(size: height))
    }
}

struct ReadDimensions: ViewModifier {
    @Binding var size: CGSize
    
    func body(content: Content) -> some View {
        GeometryReader { proxy in
            content
                .onAppear {
                    self.size = proxy.size
                    print(size)
                }
        }
    }
}
