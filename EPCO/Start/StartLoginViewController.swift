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
    @IBOutlet weak var keepLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()
        
    }
    func setupAttributes(){
        textFieldID.addLeftPadding()
        textFieldID.addleftimage(image: UIImage(systemName: "person")!)
        textFieldPW.addLeftPadding()
        textFieldPW.addleftimage(image: UIImage(systemName: "lock")!)
    }
    
    @IBAction func keepLoginButtonDidTap(_ sender: UIButton) {
        if keepLoginButton.isSelected{
            keepLoginButton.isSelected = false
        } else{
            keepLoginButton.isSelected = true
        }
    }
}
