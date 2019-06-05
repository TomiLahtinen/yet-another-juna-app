//
//  ContentView.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 04/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import SwiftUI

struct TrainListView: View {
    
    @State var model = TrainListViewModel()
    @State var stationModel = StationListModel()
    
    var body: some View {
        NavigationView {
            List(model.trains.identified(by: \.trainNumber!)) { train in
                TrainView(train: train, stationListModel: self.stationModel)
            }
        }
    }
}

#if DEBUG
struct TrainListView_Previews : PreviewProvider {
    static var previews: some View {
        TrainListView(model: TrainListViewModel())
    }
}
#endif
