//
//  WeatherListHandler.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import UIKit

class WeatherListHandler: WeatherListHandlerProtocol {

    private let fileManagerHandler: FileManagerHandlerProtocol!
    private let webService: WebServiceProtocol!

    init(withFileManagerHandler fileManagerHandler: FileManagerHandlerProtocol = FileManagerHandler(), withWebservice webService: WebServiceProtocol = WebService()) {
        self.fileManagerHandler = fileManagerHandler
        self.webService = webService
    }

    func fetchCityInfo(withfileName fileName: String, completion: @escaping ((Result<[PnCityModel], ErrorResult>) -> Void)) {
        let cityResource = FileManagerResource<[PnCityModel]>(fileName: "StartCity") { data in
            let cityListModel = try? JSONDecoder().decode([PnCityModel].self, from: data)
            return cityListModel
        }
        self.fileManagerHandler.load(resource: cityResource) { response in
            if let result = response {
                completion(.success(result))
            } else {
                completion(.failure(.parser(string: "Error while parsing json data")))
            }
        }
    }

    func fetchWeatherInfo(withCityIDs cityIDs: String, completion: @escaping ((Result<[WeatherInformation], ErrorResult>) -> Void)) {
        let weatherURL = APIManager.weatherGroupAPIURL(cityIDs)
        let cityResource = Resource<WeatherMapResult>(url: weatherURL) { data in
            let cityListModel = try? JSONDecoder().decode(WeatherMapResult.self, from: data)
            return cityListModel
        }

        self.webService.load(resource: cityResource) { response in
            if
                let result = response,
                let weatherInfo = result.list
            {
                completion(.success(weatherInfo))
            } else {
                completion(.failure(.parser(string: "Error while parsing json data")))
            }
        }
    }

    func fetchWeatherInfo(withCityID cityID: String, completion: @escaping ((Result<WeatherInformation, ErrorResult>) -> Void)) {
        let weatherURL = APIManager.weatherAPIURL(cityID)
        let cityResource = Resource<WeatherInformation>(url: weatherURL) { data in
            let cityListModel = try? JSONDecoder().decode(WeatherInformation.self, from: data)
            return cityListModel
        }

        self.webService.load(resource: cityResource) { response in
            if let result = response {
                completion(.success(result))
            } else {
                completion(.failure(.parser(string: "Error while parsing json data")))
            }
        }
    }
}
