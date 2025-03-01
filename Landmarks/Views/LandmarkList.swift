//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Saul Goodman on 3/1/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
