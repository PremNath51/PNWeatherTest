//
//  AddCityViewModel.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 31/5/21.
//

import Foundation

class AddCityViewModel: AddCityViewModelProtocol {

    let cityListModel: Dynamic<[PnCityModel]>
    let isFinished: Dynamic<Bool>
    var onErrorHandling: ((ErrorResult?) -> Void)?

    private let cityListHandler: CityListHandlerProtocol!

    init(withCityListHandler cityListHandler: CityListHandlerProtocol = CityListHandler()) {
        self.cityListHandler = cityListHandler

        self.cityListModel = Dynamic([])
        self.isFinished = Dynamic(false)
        self.fetchCityInfo()
    }

    private func fetchCityInfo() {
        DispatchQueue.global(qos: .userInteractive).async {
            self.cityListHandler.fetchCityInfo(withfileName: "citylist") { [weak self] result in
                DispatchQueue.main.async {
                    self?.isFinished.value = true
                    switch result {
                    case .success(let list) :
                        self?.cityListModel.value = list
                        break
                    case .failure(let error) :
                        print("Parser error \(error)")
                        self?.onErrorHandling?(error)
                        break
                    }
                }
            }
        }
    }
}
