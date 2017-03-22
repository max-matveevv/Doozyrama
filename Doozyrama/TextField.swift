//
//  TextField.swift
//  Doozyrama
//
//  Created by Mikhail on 31.01.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class TextField : UITextField {
    
    
    private var keyboardShift: KeyboardShift!
    private var isLoaded = false
    private let cornerRadius: CGFloat = 4.0
    private let borderWidth: CGFloat = 1
    
    override func draw(_ rect: CGRect) {
        
        let startingPoint = CGPoint(x: rect.minX, y: rect.maxY)
        let endingPoint = CGPoint(x: rect.maxX, y: rect.maxY)
        
        let path = UIBezierPath()
        
        path.move(to: startingPoint)
        path.addLine(to: endingPoint)
        path.lineWidth = borderWidth
        tintColor = UIColor.white
        tintColor.setStroke()
        path.stroke()
    }
    
    // MARK: Overrides
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        if !isLoaded {
            isLoaded = true
     
            configureField()
        }
    }
    
    // MARK: Private Methods
    
    private func configureField() {
        keyboardShift = KeyboardShift(textField: self)
    }
    
}
