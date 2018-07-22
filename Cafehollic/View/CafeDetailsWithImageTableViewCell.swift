//
//  CafeDetailsWithImageTableViewCell.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/21/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit

class CafeDetailsWithImageTableViewCell: UITableViewCell {

    @IBOutlet weak var LblCafeDetails: UILabel!
    @IBOutlet weak var ImgViewCafeDetails: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
