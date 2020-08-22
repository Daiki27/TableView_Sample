//
//  DocumentViewController.swift
//  TableView
//
//  Created by 樋口大樹 on 2020/08/22.
//  Copyright © 2020 樋口大樹. All rights reserved.
//


import UIKit

class DocumentViewController: UIViewController {
    let Return_Button = UIButton()
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
            height: view_height-view_height/16-view_width/8)
        myTextView.backgroundColor = UIColor(red: 0/255, green: 154/255, blue: 163/255, alpha: 1.0)
        myTextView.text = "Documentation\n\nLicense Agreement\nFor Open Source Computer Vision Library\n(3-clause BSD License)\nCopyright (C) 2000-2019, Intel Corporation, all rights reserved.\nCopyright (C) 2009-2011, Willow Garage Inc., all rights reserved.\nCopyright (C) 2009-2016, NVIDIA Corporation, all rights reserved.\nCopyright (C) 2010-2013, Advanced Micro Devices, Inc., all rights reserved.\nCopyright (C) 2015-2016, OpenCV Foundation, all rights reserved.\nCopyright (C) 2015-2016, Itseez Inc., all rights reserved.\nCopyright (C) 2019-2020, Xperience AI, all rights reserved.\nThird party copyrights are property of their respective owners.\n\nRedistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:\n\n* Redistributions of source code must retain the above copyright notice,this list of conditions and the following disclaimer.\n\n* Redistributions in binary form must reproduce the above copyright notice,this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\n\n* Neither the names of the copyright holders nor the names of the contributors may be used to endorse or promote products derived from this software without specific prior written permission.\n\nThis software is provided by the copyright holders and contributors \"as is\" and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose are disclaimed.In no event shall copyright holders or contributors be liable for any direct,indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services;loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability,or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage."
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
        

        
    }
    
    @IBAction func Back(_ sender : Any){
        self.performSegue(withIdentifier: "toInfo", sender: nil)
    }
}

