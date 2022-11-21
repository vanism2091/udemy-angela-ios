//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
//import CLTypingLabel

class WelcomeViewController: UIViewController {

//    @IBOutlet weak var titleLabel: CLTypingLabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        titleLabel.text = "⚡️FlashChat"
        var index = 0.0
        titleLabel.text = ""
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * index, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            index += 1
        }
       
    }
    

}
