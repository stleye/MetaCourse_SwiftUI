import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        VStack {
            LittleLemonLogo() // 1
                .padding(.top, 50)
            
            if model.displayingReservationForm {
                Text("Reservation Details")
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
            }
            
            NavigationView {
                List {
                    ForEach(model.restaurants, id: \.self) { restaurant in
                        NavigationLink {
                            ReservationForm(restaurant)
                        } label: {
                            RestaurantView(restaurant)
                        }
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        .padding(.top, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

