//
//  FavoriteCurrencyCell.swift
//  CoConverter
//
//  Created by Nick on 06/05/2019.
//  Copyright © 2019 Nikita Gulak. All rights reserved.
//

import UIKit

class FavoriteCurrencyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var flagLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var input: UITextField!
    
    @IBAction func didChangeInputValue(_ sender: Any) {
        
    }
    
    
}
