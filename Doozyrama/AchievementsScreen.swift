//
//  AchievementsScreen.swift
//  Doozyrama
//
//  Created by Mikhail on 06.02.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class AchievementsScreen: UIViewController {
    
    @IBOutlet weak var myDoozyHeroesLabel: UILabel!
    @IBOutlet weak var noHeroesYetButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var erasedFogCountLabel: UILabel!
    @IBOutlet weak var citiesCountLabel: UILabel!
    @IBOutlet weak var checkInsCountLabel: UILabel!
    @IBOutlet weak var placesCountLabel: UILabel!
    @IBOutlet weak var ballsView: UIView!
    @IBOutlet weak var ballsCountLabel: UILabel!
    @IBOutlet weak var ballsCountLabelSecond: UILabel!
    @IBOutlet weak var weekLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segnamentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
