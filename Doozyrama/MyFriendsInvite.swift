//
//  MyFriendsInvite.swift
//  Doozyrama
//
//  Created by Max on 14.02.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class MyFriendsInvite: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var imageFriend: UIImageView!
    @IBOutlet weak var nameFriend: UILabel!
    @IBOutlet weak var countStars: UILabel!
    @IBOutlet weak var buttonRemote: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
}
