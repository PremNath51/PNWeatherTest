//
//  WeatherDetailHandlerProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

protocol WeatherDetailHandlerProtocol {
    func fetchWeatherInfo(withWeatherInfo data: WeatherInformation, completion: @escaping ((Result<[[PnDetailModel]], ErrorResult>) -> Void))
}
