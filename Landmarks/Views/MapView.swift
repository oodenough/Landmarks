//
//  MapView.swift
//  Landmarks
//
//  Created by Saul Goodman on 2/27/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(landmarkRegion))
    }
}

private var landmarkRegion: MKCoordinateRegion {
    MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
}

#Preview {
    MapView()
}
