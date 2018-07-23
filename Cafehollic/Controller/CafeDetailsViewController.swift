//
//  CafeDetailsViewController.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/21/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit
import MapKit

class CafeDetailsViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource{
    
    var cafe: Cafe!
    
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var LblCafeType: UILabel!
    @IBOutlet weak var LblCafeName: UILabel!
    @IBOutlet weak var ImgViewCafeDetails: UIImageView!
    
     //var ImagesName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        self.ImgViewCafeDetails.image = UIImage(named: cafe.image)
        self.LblCafeType.text = cafe.type
        self.LblCafeName.text = cafe.name
        TableView.separatorStyle = .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
            case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CafeDetailsCell", for: indexPath) as! CafeDetailsWithImageTableViewCell
            cell.ImgViewCafeDetails.image = UIImage(named: "phone")
            cell.LblCafeDetails.text = cafe.phone
            
            return cell
            case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CafeDetailsCell", for: indexPath) as! CafeDetailsWithImageTableViewCell
            cell.ImgViewCafeDetails.image = UIImage(named: "map")
            cell.LblCafeDetails.text = cafe.location
            
            return cell
            case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CafeDescCell", for: indexPath) as! CafeDescribtionTableViewCell
            cell.LblCafeDesc.text = cafe.description
            return cell
            
            case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HowToGetCell", for: indexPath) as! HowToGeTableViewCell
            cell.LblHowToget.text = "How To Get there"
            return cell
            
            case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MapCell", for: indexPath) as! MapTableViewCell

            cell.configure(Location: cafe.location)
           // var CafeAnnon : MKPointAnnotation! = cell.CafeAnnotation
           // cell.CafeAnnotation = self.CafeAnnon
            return cell
            default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowBigMapSegue" {
            
                let destinationController = segue.destination as! FullMapViewController
                destinationController.cafe = cafe
           // destinationController.cafeAnnontaion =  self.CafeAnnon!
        }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
