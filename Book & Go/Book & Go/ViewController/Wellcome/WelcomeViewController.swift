//
//  WelcomeViewController.swift
//  Book & Go
//
//  Created by Kha Pham on 1/8/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseUI

class WelcomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func LoginTap(_ sender: Any) {
        
        //Get the default auth UI object
        //let authUI = FUIAuth.defaultAuthUI()
        //guard authUI != nil else {return}
        
        //set delegate
        //authUI?.delegate = self
        
        //get a reference to the auth UI viewcontrroller
        
        //let authViewController = authUI!.authViewController()
        
        //show authViewController
        //present(authViewController, animated:  true, completion: nil)
        
    }
    
}

//extension for authUIdelegate

//extension WelcomeViewController: FUIAuthDelegate {
    
    //public func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        //if error != nil {
        //    return
        //}
        
        //performSegue(withIdentifier: "GO", sender: self)
    //}
//}
