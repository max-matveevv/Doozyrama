//
//  ActivitiesNearby.swift
//  Doozyrama
//
//  Created by Max on 07.02.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class ActivitiesNearby: UIViewController {
    @IBOutlet weak var swipeCloseLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var countUsersLabel: UILabel!
    @IBOutlet weak var countPlacesLabel: UILabel!
    @IBOutlet weak var imageFriend: UIImageView!
    @IBOutlet weak var markImage: UIImageView!
    @IBOutlet weak var imageAction: UIImageView!
    @IBOutlet weak var nameFriendLabel: UILabel!
    @IBOutlet weak var actionHereLabel: UILabel!
    @IBOutlet weak var distanceEvent: UILabel!
    @IBOutlet weak var addressEvent: UILabel!
    @IBOutlet weak var actionFriendMark: UILabel!
    @IBOutlet weak var timeEvent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageFriend.layer.cornerRadius = imageFriend.frame.size.width / 2
        imageFriend.clipsToBounds = true
        
    }

    
}
