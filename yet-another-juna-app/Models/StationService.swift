//
//  StationService.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 05/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import Foundation

class StationListService {
    
    public func loadStations(_ callback: @escaping (Stations) -> ()){
        let session = URLSession.shared
        let url = URL(string: "https://rata.digitraffic.fi/api/v1/metadata/stations")!
        
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            if let _ = error {
                print(error)
                return
            }
            
            let stations = try! JSONDecoder().decode(Stations.self, from: data!)
            DispatchQueue.main.async {
                print("Loaded", stations.count, "Stations")
                callback(stations)
            }
        })
        task.resume()
    }
}
