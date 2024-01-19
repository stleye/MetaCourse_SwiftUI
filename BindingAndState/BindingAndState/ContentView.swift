//
//  ContentView.swift
//  BindingAndState
//
//  Created by Sebastian Tleye on 19/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var showLogo = true
    var body: some View {
        VStack {
            if showLogo {
                LittleLemonLogo(bindingVariable: $showLogo)
            }
        }
    }
}

struct LittleLemonLogo: View {
    @Binding var bindingVariable:Bool
    var body: some View {
        VStack {
            Image("littleLemonLogo")
            Button(action: {
                bindingVariable.toggle()
            }, label: {
                Text("Toggle Logo Visibility")
                  .font(.title2)
            })
        }
    }
}

#Preview {
    ContentView()
}
