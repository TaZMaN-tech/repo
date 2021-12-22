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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
