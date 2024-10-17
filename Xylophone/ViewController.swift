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
    
    var player:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
            //playing sound
            let name:String = sender.currentTitle!
            playSound(audioName: name)
            
                //changing opacity
            sender.alpha = 0.5
        
            UIView.animate(withDuration: 0.3) {
                sender.alpha = 0.5
            }
        
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
            sender.alpha = 1.0
            }
    }
    
    func playSound(audioName:String) {
        let url = Bundle.main.url(forResource: audioName, withExtension: "wav");
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play();
    }

}

