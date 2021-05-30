//
//  WeatherMapResult.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//


import Foundation

struct WeatherMapResult: Codable {
    var cnt: Int?
    var list: [WeatherInformation]?
}
