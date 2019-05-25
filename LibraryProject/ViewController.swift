//
//  ViewController.swift
//  LibraryProject
//
//  Created by Enst-MBP4 on 24/05/19.
//  Copyright © 2019 Enst-MBP4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        self.showAlert()
    }

    func showAlert(){
       let strUser = userName.text
       let strPwd = password.text
       if (strUser?.isEmpty)! {
          let alertObj = UIAlertController.init(title: "Alert", message: "Please enter the Username", preferredStyle: .alert)
          let okAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
          alertObj.addAction(okAction)
          self.present(alertObj, animated: true, completion: nil)
      }
      else if (strPwd?.isEmpty)! {
         let alertObj = UIAlertController.init(title: "Alert", message: "Please enter the Password", preferredStyle: .alert)
         let okAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
         alertObj.addAction(okAction)
         self.present(alertObj, animated: true, completion: nil)
     }
     else {
        let alertObj = UIAlertController.init(title: "Alert", message: "Login Success", preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        alertObj.addAction(okAction)
        self.present(alertObj, animated: true, completion: nil)
        }
    }
  
}

