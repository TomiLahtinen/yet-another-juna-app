//
//  Station.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 05/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let stations = try? newJSONDecoder().decode(Stations.self, from: jsonData)

import Foundation
import MapKit

// MARK: - Station
struct Station: Codable {
    
    let passengerTraffic: Bool?
    let stationType: StationTypeEnum?
    let stationName: String?
    let stationShortCode: String?
    let stationUICCode: Int?
    let countryCode: CountryCode?
    let longitude, latitude: Double?
    
    enum CodingKeys: String, CodingKey {
        case passengerTraffic = "passengerTraffic"
        case stationType = "type"
        case stationName = "stationName"
        case stationShortCode = "stationShortCode"
        case stationUICCode = "stationUICCode"
        case countryCode = "countryCode"
        case longitude = "longitude"
        case latitude = "latitude"
    }
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)
    }
}

enum CountryCode: String, Codable {
    case fi = "FI"
    case ru = "RU"
}

enum StationTypeEnum: String, Codable {
    case station = "STATION"
    case stoppingPoint = "STOPPING_POINT"
    case turnoutInTheOpenLine = "TURNOUT_IN_THE_OPEN_LINE"
}

typealias Stations = [Station]
