//
//  PnWeatherInfoTvCell.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//


import UIKit

class PnWeatherInfoTvCell: UITableViewCell {
    @IBOutlet weak var labelCityName: UILabel!
    @IBOutlet weak var labelCityTemperature: UILabel!

    var WeatherModel: WeatherInformation? {
        didSet {
            guard let data = WeatherModel else {
                return
            }
            labelCityName.text = data.name
            labelCityTemperature.text = "\(data.main?.temp ?? 0) °C"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
