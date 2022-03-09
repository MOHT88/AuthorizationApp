//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Сергей Иванов on 08.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    
    private let okAction = UIAlertAction(title: "OK", style: .default)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
}

