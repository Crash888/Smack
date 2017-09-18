//
//  LoginVC.swift
//  Smack
//
//  Created by D D on 2017-08-26.
//  Copyright © 2017 ddresearch. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let email = userNameText.text, userNameText.text != "" else { return }
        guard let password = passwordText.text, passwordText.text != "" else { return }
        
        AuthService.instance.loginUser(email: email, password: password) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
    }
    
    @IBAction func closePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPresssed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func setupView() {
        userNameText.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSForegroundColorAttributeName: smackPurplePlaceholder])
        passwordText.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSForegroundColorAttributeName: smackPurplePlaceholder])
        
        spinner.isHidden = true

    }
}
