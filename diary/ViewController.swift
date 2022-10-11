//
//  ViewController.swift
//  diary
//
//  Created by Yonghun Roh on 2022/10/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textInput: UITextField!
//    @IBOutlet weak var textLable: UILabel!
    @IBOutlet weak var textArea: UITextView!
//    @IBOutlet weak var contentLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        let text = textInput.text
        let content = textArea.text
    
    let article = Article(context: context)
        article.title = text
        article.content = content
        article.createdAt = NSDate()
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
    }
        
        
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
   
       
        // 버튼에 상수 텍스트를 선언하고 버튼을 눌렀을 때 상수 텍스트에 textInput으로 정의된 텍스트 필드의 내용을 적용할 것이다. 그것은 텍스트다. 그런데 어디에 적용할까?
//        textLable.text = text
        // 그건 레이블에 적용된 텍스트이고 버튼을 눌렀을 때 받은 text 상수를 리에블에 표시해줄 것이다.
        
        
//        contentLabel.text = content
        
       
    }
    


