//
//  RegisterViewController.swift
//  Luxpmsoft_Test
//
//  Created by Devi, Kantlala Sushmitha (Cognizant) on 05/05/21.
//

import UIKit

class RegisterViewController: BaseViewController{
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var DateText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var leasedCheck: UIButton!
    @IBOutlet weak var preOwnerCheck: UIButton!
    @IBOutlet weak var newcheck: UIButton!
    @IBOutlet weak var check: UIButton!
    var allCommonCheck = false
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButton.layer.cornerRadius = 5
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterTapped(_ sender: Any) {
        
        let shouldRegister = Validate()
        if shouldRegister {
            presentAlertOnMainThread(withTitle: "Lux PM", message: "User Successfully Registered.", onTapAction: nil)
        }else{
            presentAlertOnMainThread(withTitle: "Lux PM", message: "Please enter all the feilds.", onTapAction: nil)
        }
    }
    
    func Validate() -> Bool {
        
        if let nameText = nameText.text,let phoneText = phoneText.text,let DateText = DateText.text, let emailText = emailText.text, let passwordText = passwordText.text, let confirmPassword = confirmPassword.text{
            if nameText.isEmpty || phoneText.isEmpty || DateText.isEmpty || emailText.isEmpty || passwordText.isEmpty || confirmPassword.isEmpty && check.isSelected{
                return false
            }else{
                if check.isSelected{
                return true
                }
                
            }
        }
        return false
    }
    
    @IBAction func checkTapped(_ sender: Any) {
        if !check.isSelected  {
            check.isSelected = true
        }else{
            check.isSelected = false
        }
    }
    
    @IBAction func newCheckTapped(_ sender: Any) {
        if !newcheck.isSelected  {
            newcheck.isSelected = true
        }else{
            newcheck.isSelected = false
        }
    }
    
    @IBAction func preownedCheck(_ sender: Any) {
        
        if !preOwnerCheck.isSelected  {
            preOwnerCheck.isSelected = true
        }else{
            preOwnerCheck.isSelected = false
        }
    }
    
    @IBAction func leasedCheckTapped(_ sender: Any) {
        if !leasedCheck.isSelected  {
            leasedCheck.isSelected = true
        }else{
            leasedCheck.isSelected = false
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
