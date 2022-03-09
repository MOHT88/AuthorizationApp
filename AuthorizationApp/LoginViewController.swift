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
    
    private let okAction = UIAlertAction(title: "OK", style: .default)
    
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
        if userNameTF.text != "User" || passwordTF.text != "Password" {
            wrongData()
            passwordTF.text = ""
        } else {
            performSegue(withIdentifier: "goToWellcome", sender: self)
        }
   }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    private func wrongData () {
        let wrongData = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter correct login and password",
            preferredStyle: .alert
        )
        wrongData.addAction(okAction)
        present(wrongData, animated: true)
    }

}


