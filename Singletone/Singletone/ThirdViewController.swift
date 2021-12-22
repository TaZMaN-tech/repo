//
//  ThirdViewController.swift
//  Singletone
//
//  Created by Тадевос Курдоглян on 22.12.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let user = UserModel.shared
        nameLabel.text = user.name
        idLabel.text = String(user.id)
    }
}
