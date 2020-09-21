//
//  DangKiViewController.swift
//  Book & Go
//
//  Created by Kha Pham on 1/8/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
import FirebaseAuth

class DangKiViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var RePasswordTextFeild: UITextField!
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
    @IBAction func DangKiTap(_ sender: Any) {
        // kiem tra
        if PasswordTextField.text != RePasswordTextFeild.text{
            print("2 mat khau khong giong nhau")
        }
        else{
            Auth.auth().createUser(withEmail: emailTextField.text!, password: PasswordTextField.text!) { (result, error) in
                if error != nil{
                    
                    let alert = UIAlertController(title: "Thông báo", message: "Tên đăng nhập hoặc mật khẩu không phù hợp, vui lòng điền lại thông tin", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
                else{
                    let alert = UIAlertController(title: "Chúc mừng!", message: "Đăng kí thành công! Bắt đầu đăng nhập ngay.", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                        self.performSegue(withIdentifier: "ToDangNhap", sender: self)
                    }))
                    self.present(alert, animated: true, completion: nil)
                
                    
                }
            }
        }
    }
    
}
