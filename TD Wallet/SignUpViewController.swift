//
//  SignUpViewController.swift
//  TD Wallet
//
//  Created by Biqing Qiu on 2/3/18.
//  Copyright © 2018 Three Sigma. All rights reserved.
//

import UIKit

class SignUpViewController:
    UIViewController {
    //MARK: Properties
    
    @IBOutlet weak var accountNo: UITextField!
    //MARK: actions
    
    @IBAction func showAlert(_ sender: UIButton) {
        if APIManager.register(accountNo: accountNo.text!) == 1 {
            let alertController = UIAlertController(title: "TD Wallet", message: "Registration successful!", preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler:{(action: UIAlertAction!) in
                let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainTabControl")
                self.present(destinationController!, animated: true, completion: nil)
            }))
            self.present(alertController, animated: true, completion: nil)
        }
            
        else if (accountNo.text == "") {
            let alertController = UIAlertController(title: "TD Wallet", message: "Non-TD User registration successful!", preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler:{(action: UIAlertAction!) in
                let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainTabControl")
                self.present(destinationController!, animated: true, completion: nil)
            }))
            self.present(alertController, animated: true, completion: nil)
        }
            
        else{
            let alertController = UIAlertController(title: "TD Wallet", message: "Wrong account number!", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler:{(action: UIAlertAction!) in
                let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
                self.present(destinationController!, animated: true, completion: nil)
            }))
            self.present(alertController, animated: true, completion: nil)
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
