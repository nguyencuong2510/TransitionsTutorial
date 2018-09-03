//
//  ActionViewController.swift
//  TransitionsTutorial
//
//  Created by admin on 9/4/18.
//  Copyright © 2018 cuongnv. All rights reserved.
//

import UIKit

class ActionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func dissMiss(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
