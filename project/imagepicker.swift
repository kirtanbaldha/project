//
//  imagepicker.swift
//  project
//
//  Created by R&W on 12/01/17.
//

import UIKit

class imagepicker: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var dateofbirth03TextField: UITextField!
    @IBOutlet weak var dateofbirth02TextField: UITextField!
    @IBOutlet weak var dateofbirth01TextField: UITextField!
   
    @IBOutlet weak var phonenoTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //img.layer.borderWidth = 0.5
        //img.layer.borderColor = UIColor.black.cgColor
        //img.layer.masksToBounds = true
        //nameTextField.layer.cornerRadius = 18
        //nameTextField.layer.masksToBounds = true
        
    }
    
    @IBAction func addimageAction(_ sender: UIButton) {
        
        showalertview()
        
    }
    @IBAction func loginButtonAction(_ sender: UIButton) {
        navigatForLoginPage()
        
    }
    @IBAction func nextPage(_ sender: UIButton) {
        if nameTextField.text == "" &&  userNameTextField.text == ""{
            showalert(tital: "plese enter name and user name")
        }
        else if nameTextField.text == ""  {
            showalert(tital: "plese enter name ")
        }
        else if userNameTextField.text == "" {
            showalert(tital: "plese enter user name")
        }
        else if passwordTextField.text == "" {
            showalert(tital: "plese enter password")
        }
        else if emailTextField.text == ""{
            showalert(tital: "plese enter E-mail ")
        }
        
        else if phonenoTextField.text == ""{
            showalert(tital: "plese enter 10 digit no")
        }
//        else if ((dateofbirth01TextField.text?.count ?? 0) != 2){
//            showalert(tital: "plese enter date")
//        }
//        else if ((dateofbirth02TextField.text?.count ?? 0) != 2){
//            showalert(tital: "plese enter date")
//        }
//        else if ((dateofbirth03TextField.text?.count ?? 0) != 4){
//            showalert(tital: "plese enter date")
//        }
        navigat()
    }
    func showalert (tital:String){
        let alert = UIAlertController(title: "Error", message: tital , preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func navigat (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "homePage") as! homePage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
   
    
    func showalertview (){
        let alert = UIAlertController(title: "your choise", message: "" , preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction.init(title: "gallery", style: .default,handler: { _ in
            self.openGaller()}))
        alert.addAction(UIAlertAction.init(title: "camera", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cansel", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            img.image = info[.originalImage] as! UIImage
        dismiss(animated: true, completion: nil)
    }
      
    
    func openGaller (){
        let gallery = UIImagePickerController()
        gallery.delegate = self
        gallery.allowsEditing = true
        gallery.sourceType = .photoLibrary
        present(gallery, animated: true, completion: nil)
    }
   
    func navigatForLoginPage (){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "loginPage") as! loginPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    
    
}

