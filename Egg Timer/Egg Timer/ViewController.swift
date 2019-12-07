//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jakub Jirák on 07/12/2019.
//  Copyright © 2019 Jakub Jirák. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        //print(sender.currentTitle)
        let hardness = sender.currentTitle
        switch hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)
        default:
            print("Default option")
        }
    }
    
}

