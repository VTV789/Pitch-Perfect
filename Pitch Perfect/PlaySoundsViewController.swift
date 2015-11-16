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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
        } else {
            print("this filePath is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSlowAudio(sender: AnyObject) {
        //Play audio slooowly here...
    }

}
