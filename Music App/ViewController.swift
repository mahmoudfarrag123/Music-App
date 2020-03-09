//
//  ViewController.swift
//  Music App
//
//  Created by MAHMOUD on 10/11/19.
//  Copyright © 2019 MAHMOUD. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController,AVAudioPlayerDelegate {
    var player:AVAudioPlayer?
    var voiceNumber:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func voiceButtonPressed(_ sender: UIButton) {
        voiceNumber=sender.tag
        let url=Bundle.main.url(forResource: "note\(voiceNumber)", withExtension: "wav")
        do{
            player=try AVAudioPlayer(contentsOf: url!)
            player?.play()
        }
        catch{
            print(error)
        }
    }
    
}

