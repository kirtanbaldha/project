//
//  chengePassword.swift
//  project
//
//  Created by R&W on 12/01/23.
//

import UIKit

class chengePassword: UIViewController {

    @IBOutlet weak var reenterPasswordTextField: UITextField!
    @IBOutlet weak var firstPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func passwordChendedActionButton(_ sender: UIButton) {
        if firstPasswordTextField.text == "" && reenterPasswordTextField.text == ""{
            showalert(tital: "please enter your New password")
        }
        else if firstPasswordTextField.text == ""{
            showalert(tital: "please enter your password")
        }
        else if reenterPasswordTextField.text == ""{
            showalert(tital: "please Reenter your password")
        }
        else if firstPasswordTextField.text != reenterPasswordTextField.text{
            showalert(tital: "password is not match")
        }
        navigationForLoginPage()
        
    }
    func showalert (tital:String){
        let alert = UIAlertController(title: "Error", message: tital , preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func navigationForLoginPage (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "loginPage") as! loginPage
        navigationController?.pushViewController(navigation, animated: true)
    }
 

}
