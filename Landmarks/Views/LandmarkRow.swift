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
        }
    }
}

#Preview(landmarks[0].name) {
    LandmarkRow(landmark: landmarks[0])
}

#Preview(landmarks[1].name) {
    LandmarkRow(landmark: landmarks[0])
}

#Preview("group preview") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

