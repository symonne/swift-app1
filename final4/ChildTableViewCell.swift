//
//  ChildTableViewCell.swift
//  final4
//
//  Created by Symonne Fontenot on 5/2/16.
//  Copyright © 2016 Symonne Fontenot. All rights reserved.
//

import UIKit

class ChildTableViewCell: UITableViewCell {

    
    // MARK: Properties
    
    @IBOutlet weak var nameLable: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
