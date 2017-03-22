//
//  First input.swift
//  Doozyrama
//
//  Created by Max on 27.01.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class InviteFriends: UIViewController {
    @IBOutlet weak var letsGoButton: UIButton!
    @IBOutlet weak var nameFriendsInvite: UILabel!
    @IBOutlet weak var numberFriendInvite: UILabel!
    @IBOutlet weak var inviteImageButton: UIImageView!
    @IBOutlet weak var imageFriendInvite: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageFriendInvite.layer.cornerRadius = imageFriendInvite.frame.size.width / 2
        imageFriendInvite.clipsToBounds = true
        
    }
    
}
