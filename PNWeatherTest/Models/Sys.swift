//
//  Sys.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//


import Foundation

struct Sys: Codable {
    var sunset: Int?
    var sunrise: Int?
    var message: Double?
    var id: Int?
    var type: Int?
    var country: String?
}
