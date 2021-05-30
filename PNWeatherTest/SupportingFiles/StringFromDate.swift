//
//
//  StringFromDate.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import Foundation

protocol StringFromDateProtocal {
    func getTimeStringFromDate(date: Date) -> String
}

class StringFromDate: StringFromDateProtocal {
    func getTimeStringFromDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        let dataString = dateFormatter.string(from: date)
        return dataString
    }
}
