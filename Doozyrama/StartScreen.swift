//
//  StartScreen.swift
//  Doozyrama
//
//  Created by Mikhail on 27.01.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class StartScreen: UIViewController {
    
    @IBOutlet weak var sendMessage: UIButton!
    @IBOutlet weak var firstNumber: UIButton!
    @IBOutlet weak var constraintWidth: NSLayoutConstraint!
    @IBOutlet weak var phoneNumberTextField: TextField!
    @IBOutlet weak var newView: UIView!
    @IBOutlet weak var secretCodeTextField: TextField!
    @IBOutlet weak var beginButton: UIButton!
    
    
    
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBAction func createProfileSelect() {
        let createProfile = CreateProfile()
        navigationController?.pushViewController(createProfile, animated: false)
    }
    
    
    
    
    var imageSendMessage = UIImage(named: "Invite")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func selectCountry() {
     let mapView = TabBarController()
        mapView.configure()
        navigationController?.pushViewController(
            mapView,
            animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
            phoneNumberTextField.placeholder = "Phone Number"
            secretCodeTextField.placeholder = "Secret Code"
        
            sendMessage.setImage(imageSendMessage, for: UIControlState.normal)
            sendMessage.titleLabel?.text = ""
            sendMessage.tintColor = UIColor.white
    }
}
