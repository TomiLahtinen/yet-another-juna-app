//
//  TrainListViewModel.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 05/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class TrainListViewModel: BindableObject {
    
    var trains: Trains = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    func loadTrains(stationShortCode: String) {
        TrainListService().loadTrains(stationShortCode: stationShortCode) {
            self.trains = $0
        }
    }
    
    let didChange = PassthroughSubject<TrainListViewModel, Never>()
    
}
