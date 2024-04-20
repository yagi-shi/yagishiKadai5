//
//  ViewController.swift
//  kadai5
//
//  Created by 八木佑樹 on 2024/03/20.
//

import UIKit

class ViewController: UIViewController {
    //項目定義
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
            
    // テキストフィールドのキーボードタイプを数字専用に設定
        value1.keyboardType = UIKeyboardType.numberPad
        value2.keyboardType = UIKeyboardType.numberPad
        }
    
    //「計算する」押下
    @IBAction func calculate(_ sender: Any) {
        //string?→Int?→Intに変換
        var valueA = Float(value1.text ?? "") ?? 0
        var valueB = Float(value2.text ?? "") ?? 0
        
        //計算処理
        if value1.text == "" && value2.text == ""{
            let alert = UIAlertController(title: "課題５", message: "値を入力してください！",preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }else if value1.text == ""{
            let alert = UIAlertController(title: "課題５", message: "割られる数を入力してください！",preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }else if value2.text == ""{
            let alert = UIAlertController(title: "課題５", message: "割る数を入力してください！",preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }else if valueB == 0{
            let alert = UIAlertController(title: "課題５", message: "割る数に0を入力しないでください！",preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }else{
            var calculateResult = valueA / valueB
            result.text = String(calculateResult)
        }
    }
}



