//
//  ViewController.swift
//  EPCO
//
//  Created by 문정호 on 2022/07/16.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let startLoginViewController = storyboard.instantiateViewController(withIdentifier: "StartLoginVC") as! StartLoginViewController
        if let presentationController = startLoginViewController.presentationController as? UISheetPresentationController{
            presentationController.detents = [.medium()]
        }
        self.present(startLoginViewController, animated: true)
    }
    

}

