//
//  ScanPage.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 16/01/2023.
//

import SwiftUI

struct ScanPage: View {
    var body: some View {
        
        VStack {
            NavigationLink(destination: Livevideo()) {
                    Text(("SCAN "))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .padding()
                        .padding()
                        .background(Color("SecondaryColor"))
                        .cornerRadius(18)
                        .foregroundColor(.white)
            }
        }
        .padding()
        .padding(.bottom, 25.0)
        }
}

struct ScanPage_Previews: PreviewProvider {
    static var previews: some View {
        ScanPage()
    }
}
