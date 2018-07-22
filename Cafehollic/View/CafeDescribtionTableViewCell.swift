//
//  CafeDescribtionTableViewCell.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/21/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit

class CafeDescribtionTableViewCell: UITableViewCell {

    @IBOutlet weak var LblCafeDesc: UILabel! {
        didSet {
            LblCafeDesc.numberOfLines = 0
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
