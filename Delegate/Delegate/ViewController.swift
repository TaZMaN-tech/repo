//
//  ViewController.swift
//  Delegate
//
//  Created by Тадевос Курдоглян on 22.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toFruit" else { return }
        let qtrl = segue.destination as! AppleViewController
        qtrl.delegate = self
    }
}

extension ViewController: AppleViewControllerDelegate {
    func fruitDidSelect(_ fruit: String) {
        labelView.text = fruit
    }
}

