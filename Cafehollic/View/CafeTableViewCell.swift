//
//  CafeTableViewCell.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/21/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit

class CafeTableViewCell: UITableViewCell {

    @IBOutlet weak var ImgViewCafe: UIImageView!
    @IBOutlet weak var LblCafeName: UILabel!
    @IBOutlet weak var LblCafeLocarion: UILabel!
    @IBOutlet weak var LblCafeType: UILabel!
    
    func ConfigureCell(CafeImage:UIImage,CafeName:String,CafeType:String,CafeLocation:String)
    {
        self.ImgViewCafe.image = CafeImage
        
                ImgViewCafe.layer.cornerRadius = ImgViewCafe.bounds.width / 2
                ImgViewCafe.clipsToBounds = true
        
        self.LblCafeName.text = CafeName
        self.LblCafeLocarion.text = CafeLocation
        self.LblCafeType.text = CafeType
        
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
