//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Xylophone(_ sender: UIButton) {
        print(sender.titleLabel!.text!)
        opacity(sender: sender)
        playSound(title: sender.titleLabel!.text!)
        
    }
    
    func opacity(sender:UIButton){
        print("Changing the opacity of the button when pressed")
        sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(0.5)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // perform your task here...
            sender.backgroundColor = sender.backgroundColor?.withAlphaComponent(1)
        }
        
    }
    
    func playSound(title:String) {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

    

}

