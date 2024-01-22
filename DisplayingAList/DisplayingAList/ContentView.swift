//
//  ContentView.swift
//  DisplayingAList
//
//  Created by Sebastian Tleye on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.items) { item in
                    Text(item.name)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
