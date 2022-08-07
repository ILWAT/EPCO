//
//  StartSignUPViewController.swift
//  EPCO
//
//  Created by 문정호 on 2022/07/23.
//

import UIKit

class StartSignUPViewController: UIViewController {
    @IBOutlet weak var checkNameDupli: UIButton!
    @IBOutlet weak var checkIDDupli: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()

        // Do any additional setup after loading the view.
    }
    
    func setupAttributes(){
        checkNameDupli.layer.borderWidth = 1
        checkNameDupli.layer.borderColor = UIColor(red: 0.38, green: 0, blue: 1, alpha: 1).cgColor
        checkIDDupli.layer.borderWidth = 1
        checkIDDupli.layer.borderColor = UIColor(red: 0.38, green: 0, blue: 1, alpha: 1).cgColor
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
