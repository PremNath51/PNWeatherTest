//
//  WeatherDetailHandler.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

class WeatherDetailHandler: WeatherDetailHandlerProtocol {

    init() {
    }
    ///TODO : enhance this logic
    func fetchWeatherInfo(withWeatherInfo data: WeatherInformation, completion: @escaping ((Result<[[PnDetailModel]], ErrorResult>) -> Void)) {
        let header: [PnDetailModel] = [
            PnDetailModel(title: data.weather?[0].description ?? "", description: "\(data.main?.temp ?? 0)°", image: WeatherImageProvider().provideValue(data.weather?[0].main ?? ""))
        ]

        let dateSunrise = NSDate(timeIntervalSince1970: TimeInterval(data.sys?.sunrise ?? 0))
        let dateSunset = NSDate(timeIntervalSince1970: TimeInterval(data.sys?.sunset ?? 0))

        let body: [PnDetailModel] = [
            PnDetailModel(title: "Humidity", description: "\(data.main?.humidity ?? 0)%", image: "Humidity"),
            PnDetailModel(title: "Temperature", description: "\(data.main?.temp_max ?? 0)° : \(data.main?.temp_min ?? 0)°", image: "Temperature"),
            PnDetailModel(title: "WindSpeed", description: "\(data.wind?.speed ?? 0)m/s", image: "WindSpeed"),
            PnDetailModel(title: "Visibility", description: "\(data.visibility ?? 0)", image: "Visibility"),
            PnDetailModel(title: "Sunrise", description: StringFromDate().getTimeStringFromDate(date: dateSunrise as Date), image: "Sunrise"),
            PnDetailModel(title: "Sunset", description: StringFromDate().getTimeStringFromDate(date: dateSunset as Date), image: "Sunset")
        ]
        completion(.success([header, body]))
    }
}
