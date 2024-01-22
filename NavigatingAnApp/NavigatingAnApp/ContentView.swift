//
//  ContentView.swift
//  NavigatingAnApp
//
//  Created by Sebastian Tleye on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink("Do Something") {
                    Color.gray
                }
                .navigationTitle("Little Lemon")
            }
        }
    }
}

#Preview {
    ContentView()
}
