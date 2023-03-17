//
//  ViewController.swift
//  project
//
//  Created by R&W on 16/01/23.
//

import UIKit

class loginPage: UIViewController {

    
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if userNameTextField.text == "" && passwordTextField.text == ""{
            showalert(tital: "please enter your user name and password")
        }
        else if userNameTextField.text == ""{
            showalert(tital: "please enter your user name")
        }
        else if passwordTextField.text == ""{
            showalert(tital: "please enter your password")
        }
        
        navigationForHomePage()
    }
    
    func showalert (tital:String){
        let alert = UIAlertController(title: "Error", message: tital , preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func navigationForHomePage (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "homePage") as! homePage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    
    @IBAction func singInButtonAction(_ sender: UIButton) {
        navigationForImagePicker ()
    }
    
    func navigationForImagePicker (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "imagepicker") as! imagepicker
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func forgotPaswordButtonAction(_ sender: UIButton) {
        navigationForforgotPasword1 ()
    }
    func navigationForforgotPasword1 (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "forgotPassword1") as! forgotPassword1
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    
}

