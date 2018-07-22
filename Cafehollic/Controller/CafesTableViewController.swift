//
//  CafesTableViewController.swift
//  Cafehollic
//
//  Created by Sayed Abdo on 7/21/18.
//  Copyright © 2018 TheAmrAli. All rights reserved.
//

import UIKit

class CafesTableViewController: UITableViewController {
    
    
    var cafes: [Cafe] = [
        Cafe(name: "Berkeley Cafe", type: "Cosy", location: "217 W Martin St, Raleigh, NC 27601, États-Unis", image: "berkeleyCafe", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Black by NUARE", type: "Classy", location: "1, Bilomorska St, Kyiv, Ukraine, 02000", image: "blackCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Black Ring Coffee", type: "Cool", location: "5373 Long Beach Boulevard, Long Beach, CA 90805, États-Unis", image: "blackRingCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Camber Coffee", type: "Cosy", location: "33-35 Market St, Newcastle upon Tyne NE1 6JE, Royaume-Uni", image: "camberCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Coffee Shop", type: "Classy", location: "737 7 Ave #120, Canmore, AB T1W 3H8, Canada", image: "coffeeShop", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Friends Cafe", type: "Cool", location: "1 Magazine Road, Central Mall #01-01, Singapour 059567", image: "friendsCafe", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Hard Rock Cafe", type: "Cosy", location: "14 Boulevard Montmartre, 75009 Paris", image: "hardRockCafe", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Hop & Stork Cafe", type: "Classy", location: "Lijnmarkt 1, 3511 KE Utrecht, Pays-Bas", image: "hopStorkCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "La Mo Cafe", type: "Cool", location: "310 East Main Street Turlock, CA", image: "laMoCafe", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "La Perla Cafe", type: "Cosy", location: "Av. Don Pedro de Mendoza 1899, C1169AAC CABA, Argentine", image: "laPerlaCafe", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Mall Cafe", type: "Classy", location: "41 Salisbury Rd, Tsim Sha Tsui, Hong Kong", image: "mallCafe", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Nuare Coffee Center", type: "Cool", location: "Mykhaila Boichuka St, 12, Kyiv, Ukraine, 02000", image: "nuareCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Outpost Cafe", type: "Cosy", location: "2 Stoney St, Nottingham NG1 1LG, Royaume-Uni", image: "outpostCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Pink Lane Coffee", type: "Classy", location: "1 Pink Ln, Newcastle upon Tyne NE1 5DW, Royaume-Uni", image: "pinkLaneCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Black Sheep Cafe", type: "Cool", location: "125 Wood St, London EC2V 7AN, Royaume-Uni", image: "sheepCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "The Goodlife Coffee", type: "Cosy", location: "Route Du Bressonaz 4, 1510 Moudon, Suisse", image: "theGoodLifeCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false),
        Cafe(name: "Think Coffee", type: "Classy", location: "568 6th Ave, New York, NY 10011, États-Unis", image: "thinkCoffee", phone: "00000000", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quam augue, malesuada a bibendum at, luctus at velit. Sed ornare nibh sed nulla euismod, rutrum gravida metus pulvinar. Fusce vitae purus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem urna, eleifend vel dolor et, dapibus vehicula metus. Donec facilisis tempus mi, quis dictum arcu. In tempus sapien purus. Maecenas sit amet tempor orci, ut condimentum urna. Suspendisse ut elit in nisi cursus pretium.", isVisited: false)
    ]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cafes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell..
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CafeCell", for: indexPath) as! CafeTableViewCell
        cell.ConfigureCell(CafeImage: UIImage(named: cafes[indexPath.row].image)!, CafeName: cafes[indexPath.row].name , CafeType: cafes[indexPath.row].type, CafeLocation: cafes[indexPath.row].location)
        
        
        

        return cell
    }
    
   override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowCafeDetails" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! CafeDetailsViewController
                destinationController.cafe = cafes[indexPath.row]
            }
        }
        
        
        
        
    }
    
}
