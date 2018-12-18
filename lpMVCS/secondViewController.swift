//
//  secondViewController.swift
//  lpMVCS
//
//  Created by student on 2018/12/6.
//  Copyright © 2018年 李潘. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
   
    
    @IBOutlet weak var stuNumb: UITextField!
    @IBOutlet weak var stuName: UITextField!
    var name = ""
    var numb = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        stuNumb.text = numb
        stuName.text = name
        // Do any additional setup after loading the view.
    }
    
    /*@IBAction func back(_ sender: Any) {
        numb = stuNumb.text!
        name = stuName.text!
        navigationController?.popViewController(animated: true)
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        name = stuName.text!
        numb = stuNumb.text!
    }
   
}
