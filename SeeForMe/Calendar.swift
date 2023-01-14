//
//  Calendar.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 17/01/2023.
//

import SwiftUI

struct Calendar: View {
    var menustrationDay="20"
    var body: some View {
        NavigationView {
            ZStack{
                Circle()
                    .foregroundColor(Color("SecondaryColor"))
//                Circle()
//                    .foregroundColor(Color("AccentColor"))
//                    .padding()
                VStack{
                    Text("\(Date.now, format: .dateTime.day().month().year()) Today")
                
                    Text("\(menustrationDay)th day of menustration")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    NavigationLink(destination: LogPeriod()) {
                        Text("log period")
                            .fontWeight(.bold)
                            .foregroundColor(Color("SecondaryColor"))
                            .padding()
                            .background(Color(.white))
                            .clipShape(Capsule())
                    }
                }
                
            }
        }
        
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
