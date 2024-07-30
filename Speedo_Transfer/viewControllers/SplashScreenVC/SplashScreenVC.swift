//
//  SplashScreenVC.swift
//  Speedo_Transfer
//
//  Created by ihab saad on 30/07/2024.
//

import UIKit
import Reachability

class SplashScreenVc: UIViewController {

    // Reachability instance
    let reachability = try! Reachability()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Check network connectivity
        checkNetworkConnectivity()
    }

    func checkNetworkConnectivity() {
        reachability.whenReachable = { reachability in
            DispatchQueue.main.async {
                self.navigateToSignUp()
            }
        }
        
        reachability.whenUnreachable = { _ in
            DispatchQueue.main.async {
                self.navigateToNoInternetScreenVC()
            }
        }

        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    }
    
    func navigateToSignUp() {
        let signUpVc = SignUpVc()
        let nav = UINavigationController(rootViewController: signUpVc)
        RootRouter.presentRoot(root: nav)
    }
    
    func navigateToNoInternetScreenVC() {
        let notInternetViewController = NotInternetVC()
        let nav = UINavigationController(rootViewController: notInternetViewController)
        RootRouter.presentRoot(root: nav)
    }
}
