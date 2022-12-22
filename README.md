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
