//
//  ViewController.swift
//  TableView
//
//  Created by 樋口大樹 on 2020/08/22.
//  Copyright © 2020 樋口大樹. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    var tableView:UITableView!
    
    let data = [
        ["Infomation", "Document"]
    ]
    
    let sectionName = ["About This App"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // テーブルのインスタンス
        tableView = UITableView()
        
        // テーブルサイズを画面いっぱいに
        tableView.frame = view.frame
        tableView.backgroundColor = UIColor(red: 0/255, green: 154/255, blue: 163/255, alpha: 1.0)
        // デリゲート
        tableView.delegate = self
        tableView.dataSource = self
        
        // セルをテーブルに紐付ける
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        // データのないセルを表示しないようにするハック
        tableView.tableFooterView = UIView(frame: .zero)
        
        // テーブルを表示
        view.addSubview(tableView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// データ・ソース
extension ViewController: UITableViewDataSource {
    
    // セクションごとにデータ要素数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    // セクション数
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionName.count
    }
    
    // セクションヘッダ
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?  {
        return sectionName[section]
    }
    
    // セルの高さ
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    // セル生成
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        cell.textLabel?.textColor = UIColor.black
        cell.accessoryType = .disclosureIndicator
        
        //here change arrow color of cell.
        let chevronImageView = UIImageView(image: UIImage(systemName: "chevron.right", withConfiguration: UIImage.SymbolConfiguration(weight: .medium)))
        chevronImageView.tintColor = UIColor.black
        cell.accessoryView = chevronImageView
        //end here
        
        //cell.accessoryView = UISwitch() // スィッチ
        cell.backgroundColor = ColorManager().my_white()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        // 背景色を変更する
        view.tintColor = UIColor(red: 251/255, green: 176/255, blue: 59/255, alpha: 0.9)
        let header = view as! UITableViewHeaderFooterView
        // テキスト色を変更する
        header.textLabel?.textColor = .black
    }
    
}

// セルタップ時の動作定義など
extension ViewController: UITableViewDelegate {
    
    // セクションヘッダの高さ
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    // セルタップ時の挙動
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath == [0,0]{
            self.performSegue(withIdentifier: "toVersion", sender: nil)
        }else{
            self.performSegue(withIdentifier: "toDocument", sender: nil)
        }
    }
}
