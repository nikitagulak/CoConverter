//
//  ViewController.swift
//  CoConverter
//
//  Created by Nick on 04/05/2019.
//  Copyright © 2019 Nikita Gulak. All rights reserved.
//

import UIKit
import CoreData

var mainViewController: ViewController?

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainViewController = self
        fetchFavoriteCurrencies()
        downloadRates()
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fetchFavoriteCurrencies()
    }
    
    var favoriteCurrencies = [Currency]()
    var currencyRates = [String: Double]()
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteCurrencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCurrencyCell", for: indexPath) as! FavoriteCurrencyCell
        cell.flagLabel.text = favoriteCurrencies[indexPath.row].flag
        cell.codeLabel.text = favoriteCurrencies[indexPath.row].code
//        cell.selectionStyle = .none
        let selectedView = UIView()
        selectedView.backgroundColor = #colorLiteral(red: 0.9137254902, green: 0.968627451, blue: 1, alpha: 1)
        cell.selectedBackgroundView = selectedView
        cell.input.isEnabled = false
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (action, view, nil) in
            self.deleteFavoriteCurrency(index: indexPath.row)
        }
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = self.tableView.cellForRow(at: indexPath) as! FavoriteCurrencyCell
        cell.input.isEnabled = true
        cell.input.becomeFirstResponder()
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = self.tableView.cellForRow(at: indexPath) as! FavoriteCurrencyCell
        cell.input.isEnabled = false
        tableView.reloadData()
    }
    
    func fetchFavoriteCurrencies() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "FavoriteCurrency")
        request.returnsObjectsAsFaults = false
        var fetchedCurrencies = [Currency]()
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                fetchedCurrencies.append(Currency(flag: data.value(forKey: "flag") as! String, code: data.value(forKey: "code") as! String, name: data.value(forKey: "name") as! String))
            }
            favoriteCurrencies = fetchedCurrencies
            tableView.reloadData()
        } catch {
            print("Failed fetching CoreData")
        }
    }
    
    func deleteFavoriteCurrency(index: Int) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "FavoriteCurrency")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            let objectToDelete = result[index] as! NSManagedObject
            context.delete(objectToDelete)
            do {
                try context.save()
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        fetchFavoriteCurrencies()
        tableView.reloadData()
    }
    
    func downloadRates() {
        
        let api = "f6873f7857867b2ce0d3"
        
        var url = "https://free.currconv.com/api/v7/convert?q="
        for element in favoriteCurrencies {
            if element.code != favoriteCurrencies[0].code {
                if element.code != favoriteCurrencies[favoriteCurrencies.count-1].code {
                    url += "\(favoriteCurrencies[0].code)_\(element.code),"
                } else {
                    url += "\(favoriteCurrencies[0].code)_\(element.code)"
                }
            }
        }
        url += "&compact=ultra&apiKey="
        url += api
        print(url)
        if let urlObj = URL(string: url) {
            URLSession.shared.dataTask(with: urlObj) {(data, response, error) in
                do {
                    self.currencyRates = try JSONDecoder().decode([String:Double].self, from: data!)
                    print(self.currencyRates)
                } catch {
                    print("Error of decoding JSON: \(error)")
                }
            }.resume()
        }
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}

