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
    
    init(){
        loadTrains()
    }
    
    var trains: Trains = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    private func loadTrains() {
        TrainListService().loadTrains {
            self.trains = $0
        }
    }
    
    let didChange = PassthroughSubject<TrainListViewModel, Never>()
    
}
