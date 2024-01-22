//
//  Model.swift
//  DisplayingAList
//
//  Created by Sebastian Tleye on 22/01/2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var items = ViewModel.menuItems()
    
    static func menuItems() -> [Item] {
        return ["Lasagna", "Fettuccini Alfredo", "Spaghetti", "Avocato Toast", "Tortellini", "Pizza"].map {
            Item(name: $0)
        }
    }
    
}
