//
//  ReservationForm.swift
//  ReservationForm
//
//  Created by Sebastian Tleye on 20/01/2024.
//

import SwiftUI

struct ReservationForm: View {
    
    @State var customerName: String = ""
    
    var body: some View {
        Form {
            TextField("Type Your Name", 
                      text: $customerName, 
                      onEditingChanged: { editing in
                print(editing)
            })
            .onChange(of: customerName) { newValue in
                print(newValue)
            }
            .onSubmit {
                print("Submit")
            }
            Button("Press") {
                customerName = "HELLLOOO"
            }
        }
    }
}

#Preview {
    ReservationForm()
}
