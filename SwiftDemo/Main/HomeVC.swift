//
//  HomeViewController.swift
//  SwiftDemo
//
//  Created by Ravi Kumar Yaganti on 10/12/19.
//  Copyright © 2019 SharkDreams. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapOnLogout() {
        try! App.keychain?.remove("token")
        UIApplication.setRootView(LoginVC.instantiate(fromAppStoryboard: .PreLogin), options: UIApplication.logoutAnimation)
    }

}
