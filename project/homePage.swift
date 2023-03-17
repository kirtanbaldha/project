//
//  homePage.swift
//  project
//
//  Created by R&W on 12/01/23.
//

import UIKit

class homePage: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var allXUV = ["SCORPION","XUV700","THAR","SCORPIONCLASIC","BOLERO","BOLERONEO","MARAZZO","KUVNTX","MAHINDRAXUVE9","MAHINDRAFIVEDOORTHAR","MAHINDRAKUV","MAHINDRABE","MahindraThar5-Door","Mahindra XUV900"]
    
    var nummber = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
    
    var imgarray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
   
    @IBOutlet weak var car: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return allXUV.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! TableViewCell2
            cell.lb1.text = "\(nummber[indexPath.row])"
            cell.lb2.text = allXUV[indexPath.row]
            cell.img.image = UIImage(named: "\(imgarray[indexPath.row])")
            return cell
        }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }


}


