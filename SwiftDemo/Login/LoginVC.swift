//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Ravi Kumar Yaganti on 10/12/19.
//  Copyright © 2019 SharkDreams. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapOnLogin() {
        try! App.keychain?.set("token", key: "token")
        let navigationController = AppStoryboard.Main.instance.instantiateViewController(withIdentifier: "HomeNavigationVC")
        UIApplication.setRootView(navigationController,options: .curveEaseIn)
    }

}

