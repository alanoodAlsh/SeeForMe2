//
//  Livevideo.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 18/01/2023.
//

import SwiftUI

struct Livevideo: View {
    @StateObject private var model = FrameHandler()
    var body: some View {
        FrameView(image: model.frame)
                    .ignoresSafeArea()
    }
}

struct Livevideo_Previews: PreviewProvider {
    static var previews: some View {
        Livevideo()
    }
}
