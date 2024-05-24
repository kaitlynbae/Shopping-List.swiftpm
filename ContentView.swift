import SwiftUI

struct ContentView: View {
    
    @State var items:[String] = ["Apple Pie","String Cheese", "Watermelon","Chicken", "Cinnamon Roll"]
    
    @State var groceryItems:[ShoppingItem] = [ShoppingItem(name: "Apple", quantity: 6),ShoppingItem(name: "Rotisserie Chicken", quantity: 2),ShoppingItem(name: "Lemon")]
    
    var body: some View {
        List {
            
            Text("Sebastian Manascowko")
            Text("Giansts Tickets")
            Text("Bulls Tickets")
            Text("World Cup Tickets")
            Text("Concert Tickets")
        }
        
        List(items,id:\.self) { watermelon in
            Text(watermelon)
            
        }
        
        List(groceryItems, id:\.self){ item in 
            Text(item.name)
            Text("\(item.quantity ?? 1)")
        }
    }
}
