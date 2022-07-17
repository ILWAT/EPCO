//
//  StartLoginViewController.swift
//  EPCO
//
//  Created by 문정호 on 2022/07/17.
//

import UIKit

class StartLoginViewController: UIViewController {

    @IBOutlet weak var textFieldID: UITextField!
    @IBOutlet weak var textFieldPW: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldID.addLeftPadding()
        textFieldPW.addLeftPadding()
    }

}
