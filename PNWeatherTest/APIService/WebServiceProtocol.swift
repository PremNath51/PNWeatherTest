//
//  WebServiceProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

protocol WebServiceProtocol {
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> Void)
}
