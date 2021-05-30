//
//  FileManagerResource.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import UIKit

struct FileManagerResource<T> {
    let fileName: String
    let parse: (Data) -> T?
}

class FileManagerHandler: FileManagerHandlerProtocol {
    init() {}

        func load<T>(resource: FileManagerResource<T>, completion: @escaping (T?) -> Void) {
             if let url = Bundle.main.url(forResource: resource.fileName, withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    completion(resource.parse(data))
                  } catch (let error) {
                    print("error:\(error)")
                    completion(nil)
                }
            }
    }
}
