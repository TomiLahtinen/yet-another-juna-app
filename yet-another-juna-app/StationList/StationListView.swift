//
//  StationList.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 05/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import SwiftUI

struct StationListView : View {
    
    @State var stationModel = StationListModel()
    
    var body: some View {
        NavigationView {
            List(stationModel.stations.identified(by: \.stationUICCode!)) { station in
                NavigationButton(destination: StationDetailView(stationListModel: self.stationModel, station: station)) {
                    Text(station.stationName!)
                }
            }
        }.navigationBarTitle(Text("Station"))
    }
}

#if DEBUG
struct StationList_Previews : PreviewProvider {
    static var previews: some View {
        StationListView()
    }
}
#endif
