//
//  MeScreen.swift
//  Doozyrama
//
//  Created by Mikhail on 05.02.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class MeScreen: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var followersButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var follovingButton: UIButton!
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var infoTextField: TextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var viewForAvatar: UIView!
    
    var editButtonImage = UIImage(named: "EditButton")
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func friends() {
        let myFriends = MyFriendsInvite()
        navigationController?.pushViewController(myFriends, animated: false)
    }
    @IBAction func subscription() {
        let mySubscription = MySubscription()
        navigationController?.pushViewController(mySubscription, animated: false)
    }
    @IBAction func followers () {
        let myFolowers = MyFollowers()
        navigationController?.pushViewController(myFolowers, animated: false)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        editProfileButton.setImage(editButtonImage, for: UIControlState.normal)
        editProfileButton.tintColor = UIColor.white
        
    }
    
}
