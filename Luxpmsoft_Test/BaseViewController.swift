//
//  BaseViewController.swift
//  Luxpmsoft_Test
//
//  Created by Devi, Kantlala Sushmitha (Cognizant) on 05/05/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func presentAlert(withTitle title: String?, message: String, onTapAction completion: ((UIAlertAction) -> Void)?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: completion)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func presentAlertOnMainThread(withTitle title: String?, message: String, onTapAction completion: ((UIAlertAction) -> Void)?) {
        DispatchQueue.main.async { [weak self] in
            self?.presentAlert(withTitle: title, message: message, onTapAction: completion)
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
