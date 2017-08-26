//
//  CreateAccountVC.swift
//  Smack
//
//  Created by D D on 2017-08-26.
//  Copyright © 2017 ddresearch. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
