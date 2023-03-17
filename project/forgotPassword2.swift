//
//  forgotPassword2.swift
//  project
//
//  Created by R&W on 12/01/23.
//

import UIKit

class forgotPassword2: UIViewController {

    @IBOutlet weak var otpTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        if otpTextField.text == ""{
            showalert(tital: "plese enter otp")
        }
        else if ((otpTextField.text?.count ?? 0) != 4){
            showalert(tital: "invalide otp")
        }
        navigationForChangePasswordPage()
    }
    func showalert (tital:String){
        let alert = UIAlertController(title: "Error", message: tital , preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func navigationForChangePasswordPage (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "chengePassword") as! chengePassword
        navigationController?.pushViewController(navigation, animated: true)
    }
}
