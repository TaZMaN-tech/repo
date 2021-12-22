//
//  ObserverViewController.swift
//  Observer
//
//  Created by Тадевос Курдоглян on 22.12.2021.
//

import UIKit

class ObserverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let someNotification = NSNotification.Name("someNotification")
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor(notification:)), name: someNotification, object: nil)
    }
    
    @objc func changeColor(notification: NSNotification) {
        let color = notification.userInfo?["color"] as? UIColor ?? UIColor.red
        view.backgroundColor = color
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
    }
}
