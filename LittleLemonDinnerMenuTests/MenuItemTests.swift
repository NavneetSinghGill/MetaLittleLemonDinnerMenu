
import Testing
@testable import LittleLemonDinnerMenu

struct MenuItemTests {

    let menuItem = MenuItem(title: "title",
                            menuCategory: .food,
                            orders: 1,
                            price: 2.33,
                            ingredients: [.broccoli, .carrot])

    @Test func test_menu_item_title() async throws {
        #expect(menuItem.title == "title", "Test failed: The menu item is not configure title correctly.")
    }

    @Test func test_menu_item_ingredients() async throws {
        #expect(menuItem.ingredients == [.broccoli, .carrot], "Test failed: The menu item is not configure ingredients correctly.")
    }

}
