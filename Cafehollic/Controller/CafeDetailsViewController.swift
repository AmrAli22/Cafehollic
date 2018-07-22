//
//  CafeDetailsViewController.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/21/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit

class CafeDetailsViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource{
    
    var cafe: Cafe = Cafe()
    
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
        return 3
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
            default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
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
