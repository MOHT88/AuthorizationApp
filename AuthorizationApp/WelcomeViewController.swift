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
     
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor]
        view.layer.insertSublayer(layer, at: 0)
       
        welcomeTextLabel.text = "Welcome, " + welcomeText + "!\n 🤪"
    }
}
