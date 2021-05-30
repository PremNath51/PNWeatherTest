//
//  ProgressHUD.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//


import Foundation
import SVProgressHUD

protocol Progressing {
    func ShowSVProgressHUD_White()
    func ShowSVProgressHUD_Black()
    func DismissSVProgressHUD()
}

class ProgressHUD {
}

extension ProgressHUD: Progressing {

    func ShowSVProgressHUD_White() {
        UIApplication.shared.beginIgnoringInteractionEvents()
        SVProgressHUD.show()
    }

    func ShowSVProgressHUD_Black() {
        UIApplication.shared.beginIgnoringInteractionEvents()
        SVProgressHUD.show()
        SVProgressHUD.setDefaultStyle(SVProgressHUDStyle.custom)
        SVProgressHUD.setBackgroundColor( UIColor.black.withAlphaComponent(0.4))
        SVProgressHUD.setForegroundColor( ThemeColor.white)
        SVProgressHUD.setRingThickness( 1.0)
    }

    func DismissSVProgressHUD() {
        UIApplication.shared.endIgnoringInteractionEvents()
        SVProgressHUD.dismiss()
    }
}
