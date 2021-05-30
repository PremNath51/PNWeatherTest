//
//  AddCityViewModelProtocol.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 31/5/21.
//

import Foundation

protocol AddCityViewModelProtocol {
    var cityListModel: Dynamic<[PnCityModel]> { get }
    var onErrorHandling: ((ErrorResult?) -> Void)? { get set }
    var isFinished: Dynamic<Bool> { get }
}
