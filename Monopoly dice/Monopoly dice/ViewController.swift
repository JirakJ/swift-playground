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
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Button got tapped")
        leftDiceImageView.image = [#imageLiteral(resourceName: "dice-one"), #imageLiteral(resourceName: "dice-two"), #imageLiteral(resourceName: "dice-three"),#imageLiteral(resourceName: "dice-four"),#imageLiteral(resourceName: "dice-five"),#imageLiteral(resourceName: "dice-six")][Int.random(in: 1 ..< 6)]
        rightDiceImageView.image = [#imageLiteral(resourceName: "dice-one"), #imageLiteral(resourceName: "dice-two"), #imageLiteral(resourceName: "dice-three"),#imageLiteral(resourceName: "dice-four"),#imageLiteral(resourceName: "dice-five"),#imageLiteral(resourceName: "dice-six")][Int.random(in: 1 ..< 6)]
    }
}

