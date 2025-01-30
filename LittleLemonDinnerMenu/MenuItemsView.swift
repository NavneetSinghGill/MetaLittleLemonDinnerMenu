//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Navneet Singh Gill on 2025-01-28.
//

import SwiftUI

enum MenuSection {
    case food
    case drinks
}

struct MenuItemsView: View {
    
    var menuItems: [MenuItem] {
        (1...12).map {
            MenuItem(name: "Food \($0)")
        }
    }
    
    var body: some View {
        getList(from: menuItems)
    }
    
    func getList(from menuItems: [MenuItem]) -> some View {
        List(0..<Int(menuItems.count/3)) { index in
            HStack(spacing: 20) {
                MenuItemView(menuItem: menuItems[index*1])
                MenuItemView(menuItem: menuItems[index*1+1])
                MenuItemView(menuItem: menuItems[index*1+2])
            }
        }
        .listRowSeparator(.hidden)
    }
    
}

#Preview {
    MenuItemsView()
}
