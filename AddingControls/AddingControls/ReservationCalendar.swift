//
//  ReservationCalendar.swift
//  AddingControls
//
//  Created by Sebastian Tleye on 21/01/2024.
//

import SwiftUI

struct ReservationCalendar: View {

    @State var reservationDate = Date()

    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $reservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) {}
                Button(action: { print("do something!") }) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
            Text("Date is \(reservationDate.formatted(date: .long, time: .shortened))")
        }
    }
}

#Preview {
    ReservationCalendar()
}
