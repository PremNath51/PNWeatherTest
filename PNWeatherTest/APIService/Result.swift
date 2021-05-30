//
//  Result.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}

public enum NetworkResult<T> {
    case success(T)
    case failure(Error)
}
