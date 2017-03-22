//
//  Navigation.swift
//  Doozyrama
//
//  Created by Mikhail on 27.01.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class Navigation: UINavigationController {
    
    // MARK: Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isTranslucent = true
        navigationBar.barTintColor = Color.fadedBlue

    }
}
