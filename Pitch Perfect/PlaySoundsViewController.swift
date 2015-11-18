//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Vinh Vu on 11/15/15.
//  Copyright © 2015 Vinh. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additonal setup after loading the view
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            let filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = try!
                AVAudioPlayer(contentsOfURL: filePathUrl)
            audioPlayer.enableRate = true  // 1
            
        } else {
            print("the filePath is empty")
        }
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        //Play audio fast here...
        audioPlayer.stop()
        audioPlayer.rate = 1.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func playSlowAudio(sender: AnyObject) {
        //Play audio slooowly here..
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func StopAudio(sender: UIButton) {
        audioPlayer.stop()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
}
