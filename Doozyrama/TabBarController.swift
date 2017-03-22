//
//  TabBarController.swift
//  Doozyrama
//
//  Created by Mikhail on 03.02.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: Public Methods
    
    func configure() {
        
        let mapScreen = MapScreen()
        mapScreen.edgesForExtendedLayout = []
        
        let notificationScreen = Notifications()
        notificationScreen.edgesForExtendedLayout = []
       
        let meScreen = MeScreen()
        meScreen.edgesForExtendedLayout = []
        
        let achievementsScreen = AchievementsScreen()
        achievementsScreen.edgesForExtendedLayout = []
        
        let activitiesNearby = ActivitiesNearby()
        activitiesNearby.edgesForExtendedLayout = []
        let screens = [
            achievementsScreen,
            activitiesNearby,
            mapScreen,
            notificationScreen,
            meScreen
        ]
        
        screens[0].tabBarItem.image = UIImage(named: "IconTab1")
        screens[1].tabBarItem.image = UIImage(named: "IconTab2")
        screens[2].tabBarItem.image = UIImage(named: "IconTab3")
        screens[3].tabBarItem.image = UIImage(named: "IconTab4")
        screens[4].tabBarItem.image = UIImage(named: "IconTab5")

        setViewControllers(screens, animated: false)
        
        tabBar.isTranslucent = true
        tabBar.isOpaque = false
        
        let tabBarItems = tabBar.items! as [UITabBarItem]
        let edgeInsetsMake = UIEdgeInsetsMake(6,0,-6,0)
        tabBarItems[0].imageInsets = edgeInsetsMake
        tabBarItems[1].imageInsets = edgeInsetsMake
        tabBarItems[2].imageInsets = edgeInsetsMake
        tabBarItems[3].imageInsets = edgeInsetsMake
        tabBarItems[4].imageInsets = edgeInsetsMake
        }
}
