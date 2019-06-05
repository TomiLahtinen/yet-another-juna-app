//
//  Train.swift
//  yet-another-juna-app
//
//  Created by Tomi Lahtinen on 04/06/2019.
//  Copyright © 2019 Tomi Lahtinen. All rights reserved.
//

import Foundation

// Train.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let train = try? newJSONDecoder().decode(Train.self, from: jsonData)

import Foundation

// MARK: - Train
struct Train: Codable {
    let trainNumber: Int?
    let departureDate: String?
    let operatorUICCode: Int?
    let operatorShortCode: OperatorShortCode?
    let trainType, trainCategory: String?
    let commuterLineID: CommuterLineID?
    let runningCurrently, cancelled: Bool?
    let version: Int?
    let timetableType: TimetableType?
    let timetableAcceptanceDate: String?
    let timeTableRows: [TimeTableRow]?
}

// CommuterLineID.swift

import Foundation

enum CommuterLineID: String, Codable {
    case empty = ""
    case r = "R"
}

// OperatorShortCode.swift

import Foundation

enum OperatorShortCode: String, Codable {
    case destia = "destia"
    case vr = "vr"
}

// TimeTableRow.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let timeTableRow = try? newJSONDecoder().decode(TimeTableRow.self, from: jsonData)

import Foundation

// MARK: - TimeTableRow
struct TimeTableRow: Codable {
    let stationShortCode: String?
    let stationUICCode: Int?
    let countryCode: CountryCode?
    let type: TypeEnum?
    let trainStopping, commercialStop: Bool?
    let commercialTrack: String?
    let cancelled: Bool?
    let scheduledTime, actualTime: String?
    let differenceInMinutes: Int?
    let causes: [Cause]?
    let trainReady: TrainReady?
    let liveEstimateTime: String?
    let estimateSource: EstimateSource?
}

// Cause.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cause = try? newJSONDecoder().decode(Cause.self, from: jsonData)

import Foundation

// MARK: - Cause
struct Cause: Codable {
    let categoryCode, detailedCategoryCode: String?
    let categoryCodeID, detailedCategoryCodeID: Int?
    let thirdCategoryCode: String?
    let thirdCategoryCodeID: Int?
    
    enum CodingKeys: String, CodingKey {
        case categoryCode, detailedCategoryCode
        case categoryCodeID
        case detailedCategoryCodeID
        case thirdCategoryCode
        case thirdCategoryCodeID
    }
}

// EstimateSource.swift

import Foundation

enum EstimateSource: String, Codable {
    case combocalc = "COMBOCALC"
    case liikeAutomatic = "LIIKE_AUTOMATIC"
    case liikeUser = "LIIKE_USER"
    case mikuUser = "MIKU_USER"
}

// TrainReady.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let trainReady = try? newJSONDecoder().decode(TrainReady.self, from: jsonData)

import Foundation

// MARK: - TrainReady
struct TrainReady: Codable {
    let source: Source?
    let accepted: Bool?
    let timestamp: String?
}

// Source.swift

import Foundation

enum Source: String, Codable {
    case kupla = "KUPLA"
    case liike = "LIIKE"
}

// TypeEnum.swift

import Foundation

enum TypeEnum: String, Codable {
    case arrival = "ARRIVAL"
    case departure = "DEPARTURE"
}

// TimetableType.swift

import Foundation

enum TimetableType: String, Codable {
    case adhoc = "ADHOC"
    case regular = "REGULAR"
}

// JSONSchemaSupport.swift

import Foundation

typealias Trains = [Train]
