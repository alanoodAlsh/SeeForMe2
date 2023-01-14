//
//  LogPeriod.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 19/01/2023.
//

import SwiftUI

struct LogPeriod: View {
    @Environment(\.calendar) var calendar
    @Environment(\.presentationMode) var presentationMode
    @State var dates: Set<DateComponents> = []

    var body: some View {
        NavigationStack{
            VStack {
                MultiDatePicker("Select your preferred dates", selection: $dates)
                    
                Text(summary)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("SecondaryColor"))
                Spacer()
                    .padding(.vertical, 7.0)
                
            }
            .padding()
            .navigationBarItems(
                leading:
                Button(action : { self.presentationMode.wrappedValue.dismiss() }){
                    Text("Cancel")
                        .foregroundColor(Color("SecondaryColor"))
                },
                trailing:
                Button(action : { self.presentationMode.wrappedValue.dismiss() }){
                    Text("Save")
                        .foregroundColor(Color("SecondaryColor"))
            })

        }.navigationBarBackButtonHidden(true)
    }

    var summary: String {
        dates.compactMap { components in
            calendar.date(from: components)?.formatted(date: .abbreviated, time: .omitted)
        }.formatted()
    }
}

struct LogPeriod_Previews: PreviewProvider {
    static var previews: some View {
        LogPeriod()
    }
}
