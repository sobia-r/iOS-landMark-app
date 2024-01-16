//
//  LandmarkList.swift
//  LandMark
//
//  Created by developer on 12/01/2024.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [LandMark] {
            landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        
        NavigationSplitView{
            List(filteredLandmarks){ landmark in
                
                NavigationLink {
                                   LandmarkDetail(landmark: landmark)
                }
                label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    
        detail: {
            Text("Select landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
