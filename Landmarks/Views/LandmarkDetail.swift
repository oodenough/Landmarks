//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Saul Goodman on 3/2/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                    }
                .font(.subheadline)
                .foregroundColor(.gray)
                
                Divider()
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    LandmarkDetail()
}
