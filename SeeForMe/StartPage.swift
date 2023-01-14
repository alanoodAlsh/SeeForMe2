//
//  ContentView.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 14/01/2023.
//

import SwiftUI

struct StartPage: View {
    let baseSize=100.0
    
    var body: some View {
        NavigationView {
            
            ZStack{
                Circle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("AccentColor"))
                    .frame(width:(baseSize*6),height:(baseSize*6))
                //Spacer()
                Circle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("SecondaryColor"))
                    .frame(width:(baseSize*4),height:(baseSize*4))
                    .animation(/*@START_MENU_TOKEN@*/.easeInOut/*@END_MENU_TOKEN@*/, value: 1)
                
                
                
                
                VStack {
                    Text("See For Me").font(.largeTitle).fontWeight(.bold).foregroundColor(Color("SecondaryColor"))
                    Spacer()
                    
                    Image(systemName: "mic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.accentColor)
                        .frame(width: 100.0, height: 100.0)
                        .padding()
                        .padding()
                        .padding()
                    
                    NavigationLink(destination: AltHomepage()) {
                        Text("NEXT")
                            .padding()
                            .background(Color("AccentColor"))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .bold()
                    }
                    
                    
                    Spacer()
                    
                }
                .padding()
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
