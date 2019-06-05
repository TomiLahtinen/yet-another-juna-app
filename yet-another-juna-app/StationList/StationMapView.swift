//
//  StationMapView.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 05/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import SwiftUI
import MapKit


struct StationMapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: UIViewRepresentableContext<StationMapView>) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.mapType = .satellite
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}
