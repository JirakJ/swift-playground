//
//  ViewController.swift
//  Egg Timer
//
//  Created by Jakub Jirák on 07/12/2019.
//  Copyright © 2019 Jakub Jirák. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choosenOption: UILabel!
    
    var timer = Timer()
    var secondsRemaining: Int  = 60
    var secondsTicked: Int  = 0
    var selectedHardness = ""
    //let eggTimerDict = ["Soft": 300, "Medium": 480, "Hard": 720]
    let eggTimerDict = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        
        
        let hardness = sender.currentTitle!
        
        selectedHardness = hardness
        secondsRemaining = eggTimerDict[hardness]!
        
        choosenOption.text = "You choose \(selectedHardness)."
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if secondsRemaining > 0 {
            let minutes = secondsRemaining / 60 % 60
            let seconds = secondsRemaining % 60
            //print("\(minutes) min and \(seconds) seconds.")
            progressBar.isHidden = false
            secondsRemaining -= 1
            
            secondsTicked += 1
            
            progressBar.progress = Float(secondsTicked)/Float(eggTimerDict[selectedHardness]!)
            //print(progressBar.progress)
                
            timerLabel.text = "\(minutes) min and \(seconds) seconds."
        } else if secondsRemaining == 0 {
            progressBar.isHidden = true
            timerLabel.text = "Done!"
            playSound(soundName: "alarm")
        }
    }
    
    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else {
            print("Tone for "+soundName+" not found!")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

