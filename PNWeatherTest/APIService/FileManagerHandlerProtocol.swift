//
//  FileManagerHandlerProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

protocol FileManagerHandlerProtocol {
    func load<T>(resource: FileManagerResource<T>, completion: @escaping (T?) -> Void)
}
