//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Saul Goodman on 2/28/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview(ModelData().landmarks[0].name) {
    LandmarkRow(landmark: ModelData().landmarks[0])
}

#Preview(ModelData().landmarks[1].name) {
    LandmarkRow(landmark: ModelData().landmarks[1])
}

#Preview("group preview") {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
}

