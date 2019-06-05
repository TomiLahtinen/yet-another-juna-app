//
//  TrainView.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 04/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import SwiftUI

struct TrainView : View {
    
    var train: Train
    var stationListModel: StationListModel?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(String(train.trainType!))
                    .font(.title)
                Text(String(train.trainNumber!))
                    .font(.title)
                Spacer()
                Text(String(train.departureDate!))
            }
            Spacer()
            Text(String(self.stationName!))
                .font(.subheadline)
                .color(.gray)
        }
    }
    
    var stationName: String? {
        let shortCode = train.timeTableRows!.last!.stationShortCode!
        guard let _ = stationListModel else {
            return shortCode
        }
        
        return stationListModel?.stations.first {
            $0.stationShortCode == shortCode
        }
        .map {
            $0.stationName ?? shortCode
        }
    }
}

#if DEBUG
struct TrainView_Previews : PreviewProvider {
    static var previews: some View {
        TrainView(train: Train(trainNumber: 42, departureDate: "2019-05-04", operatorUICCode: 1, operatorShortCode: OperatorShortCode.vr, trainType: "Commuter", trainCategory: "foo", commuterLineID: CommuterLineID.r, runningCurrently: true, cancelled: false, version: 1, timetableType: .regular, timetableAcceptanceDate: "KUPLA", timeTableRows: []), stationListModel: nil)
    }
}
#endif
