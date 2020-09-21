//
//  ThemViewController.swift
//  Book & Go
//
//  Created by Kha Pham on 1/7/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class ThemViewController: UIViewController {

    @IBOutlet weak var HelloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if emailString != "" {
            HelloLabel.text = emailString
        }
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
    
    @IBAction func DangXuatTap(_ sender: Any) {
        print("Dang xuat Tapped")
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            let alert = UIAlertController(title: "Thông báo", message: "Đăng xuất khỏi tài khoản!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                self.performSegue(withIdentifier: "DangXuat", sender: self)
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
            let alert = UIAlertController(title: "Thông báo", message: "Lỗi đăng xuất, vui lòng thử lại", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
