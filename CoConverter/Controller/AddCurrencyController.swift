//
//  AddCurrencyController.swift
//  CoConverter
//
//  Created by Nick on 04/05/2019.
//  Copyright © 2019 Nikita Gulak. All rights reserved.
//

import UIKit

class AddCurrencyController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var tableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCurrencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "addCurrencyCell", for: indexPath) as! AddCurrencyCell
        cell.flagLabel.text = allCurrencies[indexPath.row].flag
        cell.codeLabel.text = allCurrencies[indexPath.row].code
        cell.nameLabel.text = allCurrencies[indexPath.row].name
        return cell
    }
    
}
