//
//  login page.swift
//  project
//
//  Created by R&W on 16/01/23.
//

import UIKit

class login_page: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var phoneNoTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
     
       
    }
   

    @IBAction func nextPageaction(_ sender:UIButton ) {
        
    }
    func navigationForRefresh (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "imagepicker") as! imagepicker
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    
}
