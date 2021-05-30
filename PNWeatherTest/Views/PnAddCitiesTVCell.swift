//
//  PnAddCitiesTVCell.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import UIKit

class PnAddCitiesTVCell: UITableViewCell {
    @IBOutlet weak var labelCityName: UILabel!
    @IBOutlet weak var labelCityId: UILabel!

    var addCitiesModel: PnCityModel? {
        didSet {
            guard let data = addCitiesModel else {
                return
            }
            labelCityName.text = data.name
            labelCityId.text = "\(data.id ?? 0)"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
