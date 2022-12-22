#  UIAlertController
- 알림창
  모달방식
- 액션 시트 
iOS 8.0 이전. UIAlertView UIActionSheet
iOS 8.0 이후  UIAlertController 로 통합

<pre>
<code>
    UIAlertAction(title: "취소", style: .cancel, handler:{ (_) in })
    
    UIAlertAction(title: "취소", style: .cancel ) { () in 
      // 구문 작성
    }
    // 알람창
    let alert = UIAlertController(title: "선택", message: "항목을 선택하기", preferredStyle: .alert)
    // 액션시트 
    let alert = UIAlertController(title: "선택", message: "항목을 선택하기", preferredStyle: .actionSheet)
</code>
</pre>


1. viewDidLoad()   : 객체가 메모리에 로드되었을때
2. viewDidAppear(_:) : 화면이 나왔을때

 <code>
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
 </code>


