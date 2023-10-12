//
//  Extension.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 12.10.2023.
//

import UIKit

// MARK: - Set background gradient color
extension UIViewController {
    func addGradientLayer() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        
        view.layer.insertSublayer(gradientLayer, at: .zero)
    }
}
