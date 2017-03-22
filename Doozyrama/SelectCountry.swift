//
//  SelectCountry.swift
//  Doozyrama
//
//  Created by Max on 03.02.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class SelectCountry: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var imageCountry: UIImageView!
    @IBOutlet weak var codeCountry: UILabel!
    @IBOutlet weak var nameCountry: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    imageCountry.layer.cornerRadius = imageCountry.frame.size.width / 2
    imageCountry.clipsToBounds = true
        
    }
    
}
