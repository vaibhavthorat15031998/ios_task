//
//  UIVIew+Extension.swift
//  DemoProjectNew
//
//  Created by MONO-HYD-MAC-23 on 09/03/24.
//

import Foundation
import UIKit



extension UIView {
    func addBorder(color: UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
    
    func addShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 4
        self.layer.masksToBounds = false
    }
}

