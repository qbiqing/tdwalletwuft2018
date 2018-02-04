//
//  PayDoneViewController.swift
//  TD Wallet
//
//  Created by Biqing Qiu on 2/3/18.
//  Copyright © 2018 Three Sigma. All rights reserved.
//

import UIKit

class PayDoneViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //Mark: Properties
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let accounts = ["Wallet", "Credit Card xxxx", "Checking Account xxxx", "Saving Account xxxx"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return accounts[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return accounts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = accounts[row]
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
