//
//  ViewController.swift
//  APPLanguage
//
//  Created by 王太炬 on 2021/2/20.
//

import UIKit

class ViewController: UIViewController {

    var  lable:UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isTranslucent = false
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
        let chinese = UIButton.init(type: .custom)
        chinese.frame = CGRect.init(x: 100, y: 100, width: 200, height: 60)
        chinese.backgroundColor = .red
        chinese.setTitle(NSLocalizedString("chinese", comment: ""), for: .normal)
        view.addSubview(chinese)
        chinese.addTarget(self, action:#selector(chineseAction(sender:)), for: .touchUpInside)
        
        let english = UIButton.init(type: .custom)
        english.frame = CGRect.init(x: chinese.frame.minX, y: chinese.frame.maxY + 30, width: 200, height: 60)
        english.backgroundColor = .red
        english.setTitle(NSLocalizedString("english", comment: ""), for: .normal)
        view.addSubview(english)
        english.addTarget(self, action:#selector(englishAction(sender:)), for: .touchUpInside)
        
        
        let label = UILabel.init(frame: CGRect.init(x: english.frame.minX, y: english.frame.maxY + 30, width: 200, height: 60))
        label.text = NSLocalizedString("label", comment: "")
        self.lable = label
        view.addSubview(label)
    }

    
    @objc func englishAction(sender:UIButton){
        APPLanguageManager.setUserLanguage(userLaguage: "en")
        print("english = \(NSLocalizedString("english", comment: ""))")
        print("当前语言：\(APPLanguageManager.getUserLanguage())")
        self.lable?.text = NSLocalizedString("label", comment: "")
        
    }
    @objc func chineseAction(sender:UIButton){
        APPLanguageManager.setUserLanguage(userLaguage: "zh-Hans")
        print("chinese = \(NSLocalizedString("chinese", comment: ""))")
        print("当前语言：\(APPLanguageManager.getUserLanguage())")
        self.lable?.text = NSLocalizedString("label", comment: "")
    }
    

}

