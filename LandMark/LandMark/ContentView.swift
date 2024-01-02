//
//  ContentView.swift
//  LandMark
//
//  Created by developer on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (alignment:.leading){
                Text("MOUNTAINS")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack{
                    Text("National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("Fountain")
                        .font(.subheadline)
            }
            
                
                
                
            
            
        }
        .padding(15)
    }
}

#Preview {
    ContentView()
}
