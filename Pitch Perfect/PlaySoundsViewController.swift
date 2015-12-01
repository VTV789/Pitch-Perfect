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
    var audioFile:AVAudioFile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additonal setup after loading the view
    
        audioPlayer = try!
            AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
        
        audioEngine = AVAudioEngine()
        audioFile = try! AVAudioFile(forReading: receivedAudio.filePathUrl)
    }
    
    func audioPlayerEngine(){
        audioPlayer.stop()
        audioEngine.reset()
        audioEngine.stop()
    }
    
    func fastSlowAction(){
        audioPlayerEngine()
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
    
    func playAudioWithVariablePitch(pitch: Float){
        audioPlayerEngine()
        
        let audioPlayerNode = AVAudioPlayerNode()
        audioEngine.attachNode(audioPlayerNode)
        
        let changePitchEffect = AVAudioUnitTimePitch()
        changePitchEffect.pitch = pitch
        audioEngine.attachNode(changePitchEffect)
        
        audioEngine.connect(audioPlayerNode, to: changePitchEffect, format: nil)
        audioEngine.connect(changePitchEffect, to: audioEngine.outputNode, format: nil)
        audioPlayerNode.scheduleFile(audioFile, atTime: nil, completionHandler: nil)
        try! audioEngine.start()
        
        audioPlayerNode.play()
    }
    
    @IBAction func playDarthvaderAudio(sender: UIButton) {
        playAudioWithVariablePitch(-1000)
    }
    
    @IBAction func StopAudio(sender: UIButton) {
        audioPlayerEngine()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}