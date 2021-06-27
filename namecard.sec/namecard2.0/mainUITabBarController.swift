//
//  mainUITabBarController.swift
//  namecard2.0
//
//  Created by 曾意晴 on 2021/6/23.
//

import UIKit

class mainUITabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let appearance = tabBar.standardAppearance
//
//        appearance.stackedLayoutAppearance.selected.iconColor = UIColor(red: 70/255, green: 119/255, blue: 138/255, alpha: 1)
//        tabBar.standardAppearance = appearance
        
        //self.tabBar.tintColor = UIColor(red: 70/255, green: 119/255, blue: 138/255, alpha: 1)
        
        UITabBar.appearance().tintColor = UIColor(red: 70/255, green: 119/255, blue: 138/255, alpha: 1)
        
        
        

    }
    
    
}
