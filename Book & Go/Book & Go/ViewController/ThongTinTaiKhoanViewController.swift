//
//  ThongTinTaiKhoanViewController.swift
//  Book & Go
//
//  Created by Kha Pham on 1/10/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

class ThongTinTaiKhoanViewController: UIViewController {
    
    var db: Firestore!
    
    @IBOutlet weak var ho: UITextField!
    @IBOutlet weak var ten: UITextField!
    @IBOutlet weak var sdt: UITextField!
    @IBOutlet weak var cmnd: UITextField!
    @IBOutlet weak var tinh: UITextField!
    @IBAction func LuuButton(_ sender: Any) {
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "email": emailString,
            "Ho": ho.text ?? "",
            "Ten": ten.text ?? "",
            "SDT": sdt.text ?? "",
            "CMND": cmnd.text ?? "",
            "Tinh/ThanhPho": tinh.text ?? ""
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var emailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // [START setup]
        let settings = FirestoreSettings()

        Firestore.firestore().settings = settings
        // [END setup]
        db = Firestore.firestore()
        emailLabel.text = emailString
        // Do any additional setup after loading the view.
    }
    

}

