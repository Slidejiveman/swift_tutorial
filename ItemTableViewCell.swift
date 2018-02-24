//
//  ItemTableViewCell.swift
//  MyApp
//
//  Created by HumanD1ffM4chin3 on 2/22/18.
//  Copyright © 2018 HumanD1ffM4chin3. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
