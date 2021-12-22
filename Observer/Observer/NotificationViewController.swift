//
//  ViewController.swift
//  Observer
//
//  Created by Тадевос Курдоглян on 22.12.2021.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func sendNotificationPressed(_ sender: Any) {
        let someNotification = NSNotification.Name("someNotification")
        NotificationCenter.default.post(name: someNotification, object: nil, userInfo: ["color": UIColor.blue])
    }
    
}

