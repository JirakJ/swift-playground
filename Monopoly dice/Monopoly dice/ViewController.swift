//
//  ViewController.swift
//  Monopoly dice
//
//  Created by Jakub Jirák on 30/11/2019.
//  Copyright © 2019 Jakub Jirák. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!

    var leftDiceNumber = 1
    var rightDiceNumber = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Button got tapped")
        leftDiceImageView.image = [#imageLiteral(resourceName: "dice-one"), #imageLiteral(resourceName: "dice-two"), #imageLiteral(resourceName: "dice-three"),#imageLiteral(resourceName: "dice-four"),#imageLiteral(resourceName: "dice-five"),#imageLiteral(resourceName: "dice-six")][leftDiceNumber]
        rightDiceImageView.image = [#imageLiteral(resourceName: "dice-one"), #imageLiteral(resourceName: "dice-two"), #imageLiteral(resourceName: "dice-three"),#imageLiteral(resourceName: "dice-four"),#imageLiteral(resourceName: "dice-five"),#imageLiteral(resourceName: "dice-six")][rightDiceNumber]
        leftDiceNumber = Int.random(in: 1 ..< 6)
        rightDiceNumber = Int.random(in: 1 ..< 6)
    }
}

