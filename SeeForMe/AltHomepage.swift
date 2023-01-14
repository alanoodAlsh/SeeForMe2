//
//  AltHomepage.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 17/01/2023.
//

import SwiftUI

struct AltHomepage: View {
    var body: some View {
        NavigationView {
            TabView {
                Calendar()
                    .tabItem {
                        Label("Calendar", systemImage: "calendar")
                    }
                Livevideo()
                    .tabItem {
                        Label("Scan", systemImage: "camera")
                    }
                
                
                QandA()
                    .tabItem {
                        Label("QandA", systemImage: "questionmark.circle.fill")
                    }
                ProfilePage()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            
        }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct AltHomepage_Previews: PreviewProvider {
    static var previews: some View {
        AltHomepage()
    }
}
