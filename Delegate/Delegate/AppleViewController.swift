//
//  AppleViewController.swift
//  Delegate
//
//  Created by Тадевос Курдоглян on 22.12.2021.
//

import UIKit

protocol AppleViewControllerDelegate: AnyObject {
    func fruitDidSelect(_ fruit: String)
}

class AppleViewController: UITableViewController {
    
    let apple = ["Яблоко", "Персик", "Киви"]
    
    weak var delegate: AppleViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        apple.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppleCell", for: indexPath)
        cell.textLabel?.text = apple[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let fruit = apple[indexPath.row]
        delegate?.fruitDidSelect(fruit)
        dismiss(animated: true, completion: nil)
    }
}
