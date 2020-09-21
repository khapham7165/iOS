//
//  DangNhapViewController.swift
//  Book & Go
//
//  Created by Kha Pham on 1/8/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

var emailString: String = ""
class DangNhapViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
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
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (result, error) in
            
            if error != nil {
                let alert = UIAlertController(title: "Thông báo", message: "Tên đăng nhập hoặc mật khẩu không đúng", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else{
                emailString = self.email.text!
                self.performSegue(withIdentifier: "GO", sender: self)
            }
        }
        
    }
    
}
