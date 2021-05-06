//
//  HomeViewController.swift
//  Luxpmsoft_Test
//
//  Created by Devi, Kantlala Sushmitha (Cognizant) on 05/05/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    var uName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        WelcomeUser()
        // Do any additional setup after loading the view.
    }
    
    func WelcomeUser() {
        var delimiter = "@"
        var name = uName.components(separatedBy: delimiter)
        welcomeLabel.text = "Hello, \(name[0])"
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
