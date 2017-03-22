//
//  UIColorExtensions.swift
//  Doozyrama
//
//  Created by Max on 19.02.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(_ r: Int, _ g: Int, _ b: Int, _ a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(r) / 255,
            green: CGFloat(g) / 255,
            blue: CGFloat(b) / 255,
            alpha: a)
    }
}
