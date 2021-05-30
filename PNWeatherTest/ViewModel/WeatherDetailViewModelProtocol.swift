//
//  WeatherDetailViewModelProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 31/5/21.
//

import Foundation

protocol WeatherDetailViewModelProtocol {
    var dataSource: Dynamic<[[PnDetailModel]]> { get }
    var onErrorHandling: ((ErrorResult?) -> Void)? { get set }
}
