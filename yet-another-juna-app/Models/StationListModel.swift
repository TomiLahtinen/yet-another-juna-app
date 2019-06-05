//
//  StationListModel.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 05/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class StationListModel: BindableObject {
    
    init(){
        loadStations()
    }
    
    var stations: Stations = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    private func loadStations(){
        StationListService().loadStations {
            self.stations = $0.filter { $0.passengerTraffic ?? false }
        }
    }
    
    let didChange = PassthroughSubject<StationListModel, Never>()
}
