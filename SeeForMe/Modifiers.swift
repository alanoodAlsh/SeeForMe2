//
//  Modifiers.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 17/01/2023.
//

import SwiftUI

struct iconEditor: ViewModifier {
    var size:CGFloat
    var text:String
    func body(content: Content) -> some View {
        content
            //.padding()
            .frame(width: 50*size,height: 50*size)
            .padding()
            .background(Color("SecondaryColor"))
            .foregroundColor(Color("Black"))
            .clipShape(Capsule())
        Text(text)
            .fontWeight(.bold)
            .foregroundColor(Color("Black"))
    }
}

struct TextFieldEditor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color("grey"))
            .cornerRadius(10.0)
            .padding(.bottom, 20)
    }
}

extension View {
    func iconStyle(with size: CGFloat,with text:String) -> some View {
        modifier(iconEditor(size: size,text: text))
    }
    
    func textFieldStyle() -> some View {
        modifier(TextFieldEditor())
    }
}
