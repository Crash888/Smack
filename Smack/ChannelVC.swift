//
//  ChannelVC.swift
//  Smack
//
//  Created by D D on 2017-08-25.
//  Copyright © 2017 ddresearch. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60.0
    }

}
