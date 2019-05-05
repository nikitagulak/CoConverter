//
//  AddCurrencyController.swift
//  CoConverter
//
//  Created by Nick on 04/05/2019.
//  Copyright © 2019 Nikita Gulak. All rights reserved.
//

import UIKit
import CoreData

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "FavoriteCurrency", in: context)
        let newFavoriteCurrency = NSManagedObject(entity: entity!, insertInto: context)
        newFavoriteCurrency.setValue(allCurrencies[indexPath.row].flag, forKey: "flag")
        newFavoriteCurrency.setValue(allCurrencies[indexPath.row].code, forKey: "code")
        newFavoriteCurrency.setValue(allCurrencies[indexPath.row].name, forKey: "name")
        
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
