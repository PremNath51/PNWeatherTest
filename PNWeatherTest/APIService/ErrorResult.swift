//
//  ErrorResult.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

enum ErrorResult: Error {
    case network(string: String)
    case parser(string: String)
    case custom(string: String)
}
