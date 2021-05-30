//
//  WeatherListHandlerProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//


import Foundation

protocol WeatherListHandlerProtocol {
    func fetchCityInfo(withfileName fileName: String, completion: @escaping ((Result<[PnCityModel], ErrorResult>) -> Void))
    func fetchWeatherInfo(withCityIDs cityIDs: String, completion: @escaping ((Result<[WeatherInformation], ErrorResult>) -> Void))
    func fetchWeatherInfo(withCityID cityID: String, completion: @escaping ((Result<WeatherInformation, ErrorResult>) -> Void))
}
