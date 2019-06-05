//
//  TrainModel.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 04/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import Foundation

class TrainListService {
    
    public func loadTrains(_ callback: @escaping (Trains) -> ()){
        let session = URLSession.shared
        let url = URL(string: "https://rata.digitraffic.fi/api/v1/live-trains/station/TPE")!
        
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            if let _ = error {
                print(error)
                return
            }
            
            let trains = try! JSONDecoder().decode(Trains.self, from: data!)
            print(trains.count)
            trains.forEach { train in
                print(train.trainNumber, train.trainType)
            }
            DispatchQueue.main.async {
                callback(trains)
            }
        })
        task.resume()
    }
}
