//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Saul Goodman on 3/1/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[2])
        LandmarkRow(landmark: landmarks[3])
        LandmarkRow(landmark: landmarks[4])
        LandmarkRow(landmark: landmarks[5])
        LandmarkRow(landmark: landmarks[6])
        LandmarkRow(landmark: landmarks[7])
        LandmarkRow(landmark: landmarks[8])
        LandmarkRow(landmark: landmarks[9])
        LandmarkRow(landmark: landmarks[10])
        LandmarkRow(landmark: landmarks[11])
    }
}

#Preview {
    LandmarkList()
}
