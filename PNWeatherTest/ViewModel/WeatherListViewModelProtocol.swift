//
//  WeatherListViewModelProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 31/5/21.
//

import Foundation

protocol WeatherListViewModelProtocol {
    var weatherList: Dynamic<[WeatherInformation]> { get }
    var onErrorHandling: ((ErrorResult?) -> Void)? { get set }

    var isFinished: Dynamic<Bool> { get }
    func pullToRefresh()
    func fetchWeatherInfo(byCity city: PnCityModel)

}
