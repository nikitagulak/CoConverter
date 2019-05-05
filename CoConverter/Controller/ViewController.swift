//
//  ViewController.swift
//  CoConverter
//
//  Created by Nick on 04/05/2019.
//  Copyright © 2019 Nikita Gulak. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Loading saved currencies
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "FavoriteCurrency")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                favoriteCurrencies.append(Currency(flag: data.value(forKey: "flag") as! String, code: data.value(forKey: "code") as! String, name: data.value(forKey: "name") as! String))
            }
            
        } catch {
            print("Failed fetching CoreData")
        }
        
        print(favoriteCurrencies)
    }
    
    var favoriteCurrencies = [Currency]()
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteCurrencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCurrencyCell", for: indexPath) as! FavoriteCurrencyCell
        cell.flagLabel.text = favoriteCurrencies[indexPath.row].flag
        cell.codeLabel.text = favoriteCurrencies[indexPath.row].code
        cell.selectionStyle = .none
        return cell
    }
    
}

