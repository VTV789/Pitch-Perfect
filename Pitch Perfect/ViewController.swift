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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(sender: UIButton) {
        // TODO: Show text "recording in progress"
        recordingInProgress.hidden = false
        // TODO: Record the user's voice
        print("in recordAudio")
    }

}
