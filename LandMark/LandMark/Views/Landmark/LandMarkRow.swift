//
//  LandMarkRow.swift
//  LandMark
//
//  Created by developer on 09/01/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandMark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)


            Spacer()
            
            if landmark.isFavorite {
                           Image(systemName: "star.fill")
                               .foregroundStyle(.yellow)
                       }
        }
    }
}


#Preview("Everest") {
    let landmarks = ModelData().landmarks
        return Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
}
