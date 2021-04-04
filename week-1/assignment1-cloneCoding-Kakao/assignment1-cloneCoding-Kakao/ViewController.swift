//
//  ViewController.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/04.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: - @IBOutlet
    
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
//MARK: - override func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//MARK: - @IBAction
    
    @IBAction func signupBtnClicked(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SignupViewController") as? SignupViewController else {
            return
        }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func loginBtnClicked(_ sender: Any) {
        if idTextField.text?.isEmpty == false && pwdTextField.text?.isEmpty == false {
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "CompleteViewController") as? CompleteViewController else {
                return
            }
            nextVC.label = idTextField.text
            self.present(nextVC, animated: true, completion: nil)
        }
    }
}

