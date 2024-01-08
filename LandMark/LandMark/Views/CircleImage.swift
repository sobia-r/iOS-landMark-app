//
//  CircleImage.swift
//  LandMark
//
//  Created by developer on 02/01/2024.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("mt-everest")
            .resizable()
            .frame(width:300, height:300)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage()
}
