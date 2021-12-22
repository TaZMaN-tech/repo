//
//  ViewController.swift
//  Singletone
//
//  Created by Тадевос Курдоглян on 22.12.2021.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = UserModel.shared
        user.name = "Ivanov Ivan"
        user.id = 6545
    }


}

