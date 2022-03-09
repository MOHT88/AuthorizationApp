//
//  WelcomeViewController.swift
//  AuthorizationApp
//
//  Created by Сергей Иванов on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeTextLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextLabel.text = "Welcome, " + welcomeText + "!\n 🤪"
    }
}
