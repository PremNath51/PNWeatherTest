//
//  SettingsViewModel.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 31/5/21.
//


import Foundation
///TODO: Need to implement settings
enum Unit: String, CaseIterable {

    case celsius = "metric"
    case fahrenheit = "imperial"
}

extension Unit {

    var displayName: String {
        get {
            switch(self) {
            case .celsius:
                return "Celsius"
            case .fahrenheit:
                return "Fahrenheit"
            }
        }
    }

}

struct SettingsViewModel {

    let units = Unit.allCases

}
