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
    var receivedAudio:RecordedAudio!
    
    var audioEngine:AVAudioEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additonal setup after loading the view
    
        audioPlayer = try!
            AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
        
        audioEngine = AVAudioEngine()
        
    }
    
    func fastSlowAction(){
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        //Play audio fast here...
        audioPlayer.play()
        fastSlowAction()
    }
    
    @IBAction func playSlowAudio(sender: AnyObject) {
        //Play audio slooowly here..
        audioPlayer.rate = 0.5
        fastSlowAction()
    }
    
    @IBAction func playChipmunkAudio(sender: UIButton) {
        playAudioWithVariablePitch(1000)
    }
    
    func playAudioWithVariablePitch(pitch: Float) {
        audioPlayer.stop()
        audioEngine.stop()
        audioEngine.reset()
        
        var audioPlayerNode = AVAudioUnitTimePitch()
        audioEngine.attachNode(audioPlayerNode)
    }
    
    @IBAction func StopAudio(sender: UIButton) {
        audioPlayer.stop()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}