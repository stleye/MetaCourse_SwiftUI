//
//  ContentView.swift
//  ObservedAndObservableObject
//
//  Created by Sebastian Tleye on 19/01/2024.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var myClass = MyClass()

    var body: some View {
        VStack {
            if myClass.showLogo {
                LittleLemonLogo(myClass: myClass)
            }
        }
    }

}

struct LittleLemonLogo: View {

    var myClass: MyClass

    var body: some View {
        VStack {
            Image("littleLemonLogo")
            Button(action: {
                myClass.showLogo.toggle()
            }, label: {
                Text("Toggle Logo Visibility OFF")
                    .font(.title2)
            })
        }
    }
}

#Preview {
    ContentView()
}
