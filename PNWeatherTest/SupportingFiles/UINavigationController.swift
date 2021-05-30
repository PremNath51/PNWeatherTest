//
//
//  UINavigationController.swift
//  PNWeatherTest
//
//  Created by Premnath Rajasekaran on 30/5/21.
//

import UIKit

extension UINavigationController {
    public func makeTransparent(withTint tint: UIColor = .white) {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.tintColor = tint
        navigationBar.titleTextAttributes = [.foregroundColor: tint]
        setNavigationBarHidden(false, animated: true)
    }
    public func presentThemeNavigationBar() {
        setNavigationBarHidden(false, animated: false)
        navigationBar.setBackgroundImage(UINavigationBar.appearance().backgroundImage(for: UIBarMetrics.default), for: UIBarMetrics.default)
        navigationBar.isTranslucent = true
        navigationBar.shadowImage = UIImage()

        //        navigationBar.barTintColor = NavigationBar.barTintColor
        //        navigationBar.titleTextAttributes = NavigationBar.titleTextAttributes
        //        navigationBar.tintColor = NavigationBar.TintColor

    }
}
