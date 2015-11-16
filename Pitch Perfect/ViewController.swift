//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Vinh Vu on 11/12/15.
//  Copyright © 2015 Vinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopAudio: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        recordButton.enabled = true 
        //Hide the stop button
        stopAudio.hidden = true
    }
    
    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false
        recordingInProgress.hidden = false
        stopAudio.hidden = false
        // TODO: Record the user's voice
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
    }
}

