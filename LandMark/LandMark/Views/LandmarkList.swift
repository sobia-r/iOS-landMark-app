//
//  LandmarkList.swift
//  LandMark
//
//  Created by developer on 12/01/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView{
            List(landmarks){ landmark in
                
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
