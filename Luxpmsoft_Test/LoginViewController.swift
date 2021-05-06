//
//  LoginViewController.swift
//  Luxpmsoft_Test
//
//  Created by Devi, Kantlala Sushmitha (Cognizant) on 05/05/21.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    let uName = "test@luxpmsoft.com"
    let pword = "test1234!"
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? HomeViewController {
            if let userName = userName.text {
                vc.uName = userName
            }
        }
    }
    
    @IBAction func LoginTapped(_ sender: Any) {
        if let userName = userName.text, let password = password.text {
            if userName.elementsEqual(uName) && password.elementsEqual(pword) {
                performSegue(withIdentifier: "HomeScreen", sender: nil)
            }else{
                presentAlertOnMainThread(withTitle: "LuxPM", message: "Username and Passsword are incorrect.", onTapAction: nil)
            }
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
