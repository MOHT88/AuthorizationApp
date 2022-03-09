//
//  WelcomeViewController.swift
//  AuthorizationApp
//
//  Created by Сергей Иванов on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeTextLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
    var welcomeText: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextLabel.text = "Welcome, " + welcomeText + "!\n 🤪"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
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
