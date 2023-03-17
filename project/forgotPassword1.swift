//
//  forgotPassword1.swift
//  project
//
//  Created by R&W on 12/01/23.
//

import UIKit

class forgotPassword1: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func SendotpButtonAction(_ sender: UIButton) {
        if emailTextField.text == ""{
            showalert(tital: "please enter your E-maill")
        }
        navigationForOtpPage()
    }
    func showalert (tital:String){
        let alert = UIAlertController(title: "Error", message: tital , preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func navigationForOtpPage (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "forgotPassword2") as! forgotPassword2
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    
    
    
    
   
}
