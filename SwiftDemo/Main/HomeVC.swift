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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
