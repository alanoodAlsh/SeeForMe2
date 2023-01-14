//
//  ProfilePage.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 19/01/2023.
//

import SwiftUI

struct ProfilePage: View {
    var Name="Rahaf Alanazi"
    var Email="privateEmail@gmail.com"
    var body: some View {
        NavigationView {
            
        
            VStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .padding(.bottom, 75)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("SecondaryColor")/*@END_MENU_TOKEN@*/)
                
                Text(Name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                
                Text(Email)

            }

            
        }.navigationBarBackButtonHidden(true)
        
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
