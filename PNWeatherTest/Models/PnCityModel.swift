//
//  PnCityModel.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

struct PnCityModel: Codable {
    let id: Int?
    let name: String?
    let coord: Coord?
    let country: String?
}

extension PnCityModel {
    static var empty: PnCityModel {
        return PnCityModel(id: nil, name: nil, coord: nil, country: nil)
    }
}
