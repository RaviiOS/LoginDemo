//
//  UIViewController+Features.swift
//  SwiftDemo
//
//  Created by Ravi Kumar Yaganti on 10/12/19.
//  Copyright © 2019 SharkDreams. All rights reserved.
//

import UIKit

extension UIViewController {
   class var storyboardID : String {
    
     return "\(self)"
   }
    
    static func instantiate(fromAppStoryboard appStoryboard: AppStoryboard) -> Self {
        
        return appStoryboard.viewController(viewControllerClass: self)
    }

}

// Usage
/*
 let greenScene = GreenVC.instantiate(fromAppStoryboard: .Main)

 let greenScene = AppStoryboard.Main.viewController(viewControllerClass: GreenVC.self)

 let greenScene = AppStoryboard.Main.instance.instantiateViewController(withIdentifier: GreenVC.storyboardID)
 */
