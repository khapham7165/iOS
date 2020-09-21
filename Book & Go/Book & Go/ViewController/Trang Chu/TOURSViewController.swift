//
//  TOURSViewController.swift
//  Book & Go
//
//  Created by Kha Pham on 1/9/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class TOURSViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TourCell", for: indexPath) as! TourTableViewCell
        cell.TenTour.text = "Đà Lạt"
        cell.Rating.text = "rating: 5.0"
        cell.Gia.text = "GIÁ: 2000000"
        cell.TichDiem.text = "Tích điểm: 2000"
        return (cell)
    }

}
