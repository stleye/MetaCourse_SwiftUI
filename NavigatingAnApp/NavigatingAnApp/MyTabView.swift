//
//  MyTabView.swift
//  NavigatingAnApp
//
//  Created by Sebastian Tleye on 22/01/2024.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack {
            TabView {
                Text("This is the Share View")
                    .tabItem {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }
                Text("This is the Trash View")
                    .tabItem {
                        Label("", systemImage: "trash")
                    }
            }
        }
    }
}

#Preview {
    MyTabView()
}
