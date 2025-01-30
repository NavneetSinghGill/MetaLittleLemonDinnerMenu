
import SwiftUI

struct GridView<Item: View>: View {
    var items: [Item]
    var amountOfCellsToShowInOneRow = 3

    var body: some View {
        createGrid()
    }
    
    func createGrid() -> some View {
        List(0...Int((items.count-1)/amountOfCellsToShowInOneRow), id: \.self) { rowIndex in
            singleRowView(rowIndex)
                .listRowSeparator(.hidden)
        }
    }
    
    func singleRowView(_ rowIndex: Int) -> some View {
        let remainingCells = items.count - rowIndex*amountOfCellsToShowInOneRow
        let cellCount: Int = min(amountOfCellsToShowInOneRow, remainingCells)

        return HStack(spacing: 10) {
            ForEach(0..<cellCount, id: \.self) {
                items[rowIndex*amountOfCellsToShowInOneRow + $0]
            }
            // Fake cells to fill the last cell space
            if remainingCells <= amountOfCellsToShowInOneRow {
                ForEach(0..<(amountOfCellsToShowInOneRow-remainingCells), id: \.self) { _ in
                    Rectangle()
                        .frame(height: 0)
                }
            }
        }

    }
}
