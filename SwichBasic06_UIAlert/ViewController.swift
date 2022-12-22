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

    @IBAction func login(_ sender: Any) {
        let title = "로그인"
        let message =  "ip 입력하세요"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in
            if let tf = alert.textFields?[0]{
                print("input value \( tf.text! )")
            } else{
                print("there is no input")
            }
            
        }
            
       
        alert.addAction(ok)
        alert.addAction(cancel)
        
        // 원형
        alert.addTextField(configurationHandler: { (textfield: UITextField) in
            textfield.placeholder = "passwrod"
            textfield.isSecureTextEntry = true
        })
        // 인자대신 메소드로 추가
        alert.addTextField(){ (textfield: UITextField) in
               textfield.placeholder = "passwrod"
               textfield.isSecureTextEntry = true
        }
        // 클러저 인자 타입 생략
        alert.addTextField() { (tf) in
            tf.placeholder = "passwrod"
            tf.isSecureTextEntry = true
        }
        // 클로저 인자 생략
        alert.addTextField() {
            $0.placeholder = "passwrod"
            $0.isSecureTextEntry = true
        }
        
        
        
        self.present(alert, animated: false)
        
        
    }
    
    @IBAction func alert(_ sender: Any) {
        
        //let alert = UIAlertController(title: "선택", message: "항목을 선택하기", preferredStyle: .alert)
        let alert = UIAlertController(title: "선택", message: "항목을 선택하기", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default)
        let exec = UIAlertAction(title: "실행", style: .destructive)
        let stop = UIAlertAction(title: "중지", style: .default)

        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        self.present(alert, animated: false)
        
        
    }
}

