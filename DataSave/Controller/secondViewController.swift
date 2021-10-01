//
//  SecondViewController.swift
//  Data-Save
//
//  Created by 준수김 on 2021/10/01.
//

import UIKit



class secondViewController: UIViewController {

    @IBOutlet weak var Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func tappedBtn(_ sender: UIButton) {
        dataList.add(memo: Text.text!)
        
    }
    
}
