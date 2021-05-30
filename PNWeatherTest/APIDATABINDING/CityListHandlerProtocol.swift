//
//  CityListHandlerProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

protocol CityListHandlerProtocol {
    func fetchCityInfo(withfileName fileName: String, completion: @escaping ((Result<[PnCityModel], ErrorResult>) -> Void))
}
