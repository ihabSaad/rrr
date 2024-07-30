//
//  NotInternetVC.swift
//  Speedo_Transfer
//
//  Created by ihab saad on 30/07/2024.
//

import UIKit

class NotInternetVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func checkInternet(_ sender: Any) {
        showAlart(message: "Make sure it is not Wi-Fi or data 🛜")
    }
    
    

}
