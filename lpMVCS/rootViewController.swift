//
//  ViewController.swift
//  lpMVCS
//
//  Created by student on 2018/12/6.
//  Copyright © 2018年 李潘. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stuNumber: UITextField!
    @IBOutlet weak var stuName: UITextField!
    //UserDefaults用户默认值数据库的接口，其中存储键值PAI
    let userDefault = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //-------preferences------参数选择
    //通知视图控制器，其视图将被添加到视图HI中，初始化界面中的text框的值。
    /*override func viewWillAppear(_ animated: Bool) {
        stuNumber.text = userDefault.string(forKey: "numb")
        stuName.text = userDefault.string(forKey: "name")
    }*/
    //通知视图控制器将执行一个SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondMvc"{
            let secondMVC = segue.destination as! secondViewController
            //正向传参：将rootMvc的text框的值————>secondMvc的text框
            secondMVC.numb = stuNumber.text!
            secondMVC.name = stuName.text!
            
            /*//将text框的值存为text框的Default值，用于下次初始化text框-------preferences------参数选择
            userDefault.set(stuNumber.text, forKey: "numb")
            userDefault.set(stuName.text, forKey: "name")
            userDefault.synchronize()
            //打印当前用户的临时目录的路径
            print("当前用户的临时目录的路径:"+NSTemporaryDirectory())*/
        }
    }
    //返回最初的界面，实现反向传参
    @IBAction func back(segue:UIStoryboardSegue) {
        //获取要回传的参数
        if let secVC = segue.source as? secondViewController {
            stuNumber.text = secVC.numb
            stuName.text = secVC.name
            /*//更新初始化的值，实现反向传参-------preferences------参数选择
            userDefault.set(stuNumber.text, forKey: "numb")
            userDefault.set(stuName.text, forKey: "name")
            userDefault.synchronize()*/
           
        }
    }
  
    
    
    
   
}

