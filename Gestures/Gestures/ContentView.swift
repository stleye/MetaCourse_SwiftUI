//
//  ContentView.swift
//  Gestures
//
//  Created by Sebastian Tleye on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SequenceGestureView()
    }
}

struct SequenceGestureView: View {
    @State private var message = "You can long press and then drag"
 
    var body: some View {
        let longPress = LongPressGesture()
            .onEnded { _ in
                print("Long Press detected. Now you can drag me")
            }
 
        let drag = DragGesture()
            .onChanged{ _ in
                print ("Dragging...")
            }
  
        let sequence = longPress.sequenced(before: drag)
  
        Image("littleLemonLogo")
            .gesture(sequence)
    }

}

struct MagnificationGestureView: View {
    @State private var amount = 0.0
    @State private var finalAmount = 1.0
 
    var body: some View {
        Image("littleLemonLogo")
            .scaleEffect(finalAmount + amount)
            .gesture(
        MagnificationGesture()
            .onChanged { value in
                amount = value - 1
            }
            .onEnded { value in
                finalAmount += amount
                amount = 0
            }
        )
    }

}

struct RotationGestureView: View {

    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero

    var body: some View {
        Image("littleLemonLogo")
            .rotationEffect(amount + finalAmount)
            .gesture(
                RotationGesture
                RotationGesture()
                    .onChanged { value in
                        amount = value
                    }
                    .onEnded { value in
                        finalAmount += amount
                        amount = .zero
                    }
            )
    }
}

struct DragGestureView: View {
    @State private var offsetValue = CGSize.zero
    
    var body: some View {
        Image("littleLemonLogo")
            .offset(offsetValue)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        offsetValue = gesture.translation
                    }
            )
    }
}

struct LongTapGestureView: View {
    var body: some View {
      Text("Little Lemon Restaurant").onLongPressGesture {
          print("Long Press Detected!")
      }
    }
}

struct MultipleTapGestureView: View {
    var body: some View {
        Text("Little Lemon Restaurant").onTapGesture(count: 2) {
            print("Text Tapped!")
        }
    }
}

struct SingleTapGesture: View {
    var body: some View {
        Text("Little Lemon Restaurant").onTapGesture {
            print("Text Tapped!")
        }
    }
}

#Preview {
    ContentView()
}
