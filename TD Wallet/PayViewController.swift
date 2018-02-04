//
//  PayViewController.swift
//  TD Wallet
//
//  Created by Biqing Qiu on 2/3/18.
//  Copyright © 2018 Three Sigma. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonA(_ sender: UIButton) {
        label.text = "Anakin Skywalker"
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        label.text = "Chewbacca"
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
