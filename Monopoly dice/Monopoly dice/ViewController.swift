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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        leftDiceImageView.image =  #imageLiteral(resourceName: "dice-one")
        rightDiceImageView.image =  #imageLiteral(resourceName: "dice-one")
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Button got tapped")
        let numberLeft = Int.random(in: 1 ..< 6)
        let numberRight = Int.random(in: 1 ..< 6)
        switch numberLeft {
            case 1:
                leftDiceImageView.image =  #imageLiteral(resourceName: "dice-one")
            case 2:
                leftDiceImageView.image =  #imageLiteral(resourceName: "dice-two")
            case 3:
                leftDiceImageView.image =  #imageLiteral(resourceName: "dice-three")
            case 4:
                leftDiceImageView.image =  #imageLiteral(resourceName: "dice-four")
            case 5:
                leftDiceImageView.image =  #imageLiteral(resourceName: "dice-five")
            default:
                leftDiceImageView.image =  #imageLiteral(resourceName: "dice-six")
        }
        
        switch numberRight {
            case 1:
                rightDiceImageView.image =  #imageLiteral(resourceName: "dice-one")
            case 2:
                rightDiceImageView.image =  #imageLiteral(resourceName: "dice-two")
            case 3:
                rightDiceImageView.image =  #imageLiteral(resourceName: "dice-three")
            case 4:
                rightDiceImageView.image =  #imageLiteral(resourceName: "dice-four")
            case 5:
                rightDiceImageView.image =  #imageLiteral(resourceName: "dice-five")
            default:
                rightDiceImageView.image =  #imageLiteral(resourceName: "dice-six")
        }
    }
}

