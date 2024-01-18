//
//  LandmarkDetail.swift
//  LandMark
//
//  Created by developer on 13/01/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark:LandMark
    
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    
    var body: some View {
        @Bindable var modelData = modelData

        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height:300)
            
            CircleImage(image:landmark.image)
                .offset(y:-150)
                .padding(.bottom, -150)
               
            
            VStack (alignment:.leading){
                HStack {
                                    Text(landmark.name)
                                        .font(.title)
                                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                                }
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
    let modelData = ModelData()
        return LandmarkDetail(landmark: modelData.landmarks[0])
            .environment(modelData)
}
