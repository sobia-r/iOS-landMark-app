//
//  LandmarkDetail.swift
//  LandMark
//
//  Created by developer on 13/01/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:LandMark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height:300)
            
            CircleImage(image:landmark.image)
                .offset(y:-150)
                .padding(.bottom, -150)
               
            
            VStack (alignment:.leading){
                Text(landmark.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    HStack{
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                        
                        }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                                    .font(.title2)
                Text(landmark.description)
                    
                    
                    
                
                
            }
            .padding(15)
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
