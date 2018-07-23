//
//  MapTableViewCell.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/22/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit
import MapKit


class MapTableViewCell: UITableViewCell {

    var CafeAnnotation : MKPointAnnotation!
    @IBOutlet weak var MapOnCell: MKMapView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure (Location : String ){
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(Location) { (PlaceMars, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            } else {
                if let PlaceMarks = PlaceMars {
                    let PlaceMarks = PlaceMars![0]
                    
                    let annotation = MKPointAnnotation()
                    if let location = PlaceMarks.location{
                         annotation.coordinate = location.coordinate
                        self.CafeAnnotation = annotation
                        self.MapOnCell.addAnnotation(annotation)
                        
                        let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                        self.MapOnCell.setRegion(region, animated: true)
                    }
                }
            }
        }
        
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
