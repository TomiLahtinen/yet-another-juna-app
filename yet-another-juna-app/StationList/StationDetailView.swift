//
//  StationDetailView.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 05/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import SwiftUI

struct StationDetailView : View {
    
    var stationListModel: StationListModel
    var station: Station
    
    var body: some View {
        VStack {
            StationMapView(coordinate: station.coordinate)
                .frame(height: 300)
            TrainListView(station: station, stationListModel: self.stationListModel)
        }
    }
}

