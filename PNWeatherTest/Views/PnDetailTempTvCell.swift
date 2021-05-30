//
//  PnDetailTempTvCell.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//


import UIKit

class PnDetailTempTvCell: UICollectionViewCell {
    @IBOutlet weak var bagroundView: UIView!
    @IBOutlet var titleLabel: UILabel?
    @IBOutlet var detailLabel: UILabel?
    @IBOutlet var weatherImage: UIImageView?

    var detailModel: PnDetailModel? {
        didSet {
            guard let data = detailModel else {
                return
            }
            titleLabel?.text = data.title
            detailLabel?.text = data.description
            weatherImage?.image = UIImage(named: data.image!)
        }
    }
}
