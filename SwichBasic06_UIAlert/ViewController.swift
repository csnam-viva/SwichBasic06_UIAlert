//
//  ViewController.swift
//  SwichBasic06_UIAlert
//
//  Created by 비바 on 2022/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alert: UIButton!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     
    }

    @IBAction func alert(_ sender: Any) {
        
        let alert = UIAlertController(title: "선택", message: "항목을 선택하기", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        alert.addAction(cancel)
        self.present(alert, animated: false)
    }
}

