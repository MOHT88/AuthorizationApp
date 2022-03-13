//
//  PersonalInfoViewController.swift
//  AuthorizationApp
//
//  Created by Сергей Иванов on 12.03.2022.
//

import UIKit

class PersonalInfoViewController: UIViewController {

    @IBOutlet var personInformationLabel: UILabel!
    
    let personalInfo = PersonData()
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personInformationLabel.text = personalInfo.information
    }
    
}
