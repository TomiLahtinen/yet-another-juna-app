//
//  ContentView.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 04/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import SwiftUI

struct TrainListView: View {
    
    var station: Station
    var stationListModel: StationListModel
    @State var model = TrainListViewModel()
    
    init(station: Station, stationListModel: StationListModel) {
        self.station = station
        self.stationListModel = stationListModel
        
    }
    
    var body: some View {
        NavigationView {
            List(model.trains.identified(by: \.trainNumber!)) { train in
                TrainView(train: train, stationListModel: self.stationListModel)
            }
        }.onAppear{
            self.model.loadTrains(stationShortCode: self.station.stationShortCode!)
        }.navigationBarTitle(Text(self.station.stationName!))
    }
}
