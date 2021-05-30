//
//  CityListHandler.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

class CityListHandler: CityListHandlerProtocol {

    private let fileManagerHandler: FileManagerHandlerProtocol!

    init(withFileManagerHandler fileManagerHandler: FileManagerHandlerProtocol = FileManagerHandler()) {
        self.fileManagerHandler = fileManagerHandler
    }

    func fetchCityInfo(withfileName fileName: String, completion: @escaping ((Result<[PnCityModel], ErrorResult>) -> Void)) {
        let cityResource = FileManagerResource<[PnCityModel]>(fileName: fileName) { data in
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
}
