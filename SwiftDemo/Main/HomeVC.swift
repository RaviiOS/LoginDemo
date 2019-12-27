//
//  HomeViewController.swift
//  SwiftDemo
//
//  Created by Ravi Kumar Yaganti on 10/12/19.
//  Copyright © 2019 SharkDreams. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet var dashboardTableView: UITableView!
    @IBOutlet var logoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        dashboardTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }
    
    @IBAction func tapOnLogout() {
        try! App.keychain?.remove("token")
        UIApplication.setRootView(LoginVC.instantiate(fromAppStoryboard: .PreLogin), options: UIApplication.logoutAnimation)
    }

}

extension HomeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        return cell
    }
}
