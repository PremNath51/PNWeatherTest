//
//  NetworkingError.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

enum NetworkingError: LocalizedError {
    case badJSON
    public var errorDescription: String? {
        switch self {
        case .badJSON:
            return NSLocalizedString("The data from the server came back in a way we couldn't use", comment: "")
        }
    }
}
