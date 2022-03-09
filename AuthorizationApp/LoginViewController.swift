//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Сергей Иванов on 08.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    private let okAction = UIAlertAction(title: "OK", style: .default)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeText = userNameTF.text
    }
    
    @IBAction func remindUserName() {
        let remindUserName = UIAlertController(
            title: "Oops!",
            message: "Your name is User 😤",
            preferredStyle: .alert
        )
        remindUserName.addAction(okAction)
        present(remindUserName, animated: true)
    }
   
    
    @IBAction func remindPassword() {
        let remindPassword = UIAlertController(
            title: "Oops!",
            message: "Your password is Password 😡",
            preferredStyle: .alert
        )
        remindPassword.addAction(okAction)
        present(remindPassword, animated: true)
        
    }
    
    @IBAction func logInButtonPressed() {
   }






}


