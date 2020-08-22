//
//  InfoViewController.swift
//  TableView
//
//  Created by 樋口大樹 on 2020/08/22.
//  Copyright © 2020 樋口大樹. All rights reserved.
//


import UIKit

class InfoViewController: UIViewController {
    let Return_Button = UIButton()
    var Info_Button   = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view_width = Double(self.view.bounds.width)
        let view_height = Double(self.view.bounds.height)
        
        //Text
        let myTextView: UITextView = UITextView()
        myTextView.frame = CGRect(
            x:      0,
            y:      view_height/16 ,
            width:  view_width,
            height: view_height-view_height/16)
        myTextView.backgroundColor = UIColor(red: 0/255, green: 154/255, blue: 163/255, alpha: 1.0)
        myTextView.text = "Version:1.0\nDeveloper:Daiki Higuchi\nお問い合わせ：本アプリのAppStoreプレビューのサポートよりお問い合わせ下さい.\n(Inquiry: Please contact me from the support page of AppStore preview of this application.)"
        myTextView.font = UIFont.systemFont(ofSize: CGFloat(20))
        myTextView.textColor = UIColor.black
        myTextView.isEditable = false
        self.view.addSubview(myTextView)
        
        self.view.backgroundColor = UIColor(red: 0/255, green: 154/255, blue: 163/255, alpha: 1.0)
        self.Return_Button.frame = CGRect(
            x: view_width/2 - view_width/8,
            y: view_height-view_width/8,
            width: view_width/4,
            height: view_width/8)
        self.Return_Button.backgroundColor = UIColor(red: 251/255, green: 176/255, blue: 59/255, alpha: 0.9)
        self.Return_Button.addTarget(self, action: #selector(Back(_:)), for: UIControl.Event.touchUpInside)
        self.Return_Button.setTitle("Back", for: .normal)
        self.Return_Button.setTitleColor(.black, for: .normal)
        self.view.addSubview(Return_Button)
        
        let frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        //self.Info_Button = Info_Design(frame: frame)
        self.Info_Button.frame = frame
        self.Info_Button.setTitle("・・・", for: .normal)
        self.Info_Button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        self.Info_Button.setTitleColor(.black, for: .normal)
        self.Info_Button.backgroundColor = UIColor.white
        self.Info_Button.layer.cornerRadius = CGFloat(20)
        self.view.addSubview(Info_Button)
    }
    
    @IBAction func Back(_ sender : Any){
        self.performSegue(withIdentifier: "toInfo", sender: nil)
    }
}
