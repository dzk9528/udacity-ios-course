//
//  PlaySoundViewController.swift
//  PitchPerfect
//
//  Created by 张帝 on 2018/7/1.
//  Copyright © 2018 dizhang. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //recordedAudioURL = nil
        setupAudio()
        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        print("viewWillAppear called")
        configureUI(.notPlaying)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "stopRecording"{
            let playSoundsVC = segue.destination as! PlaySoundsViewController
            let recordedAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recordedAudioURL
        }
        
    }
 */
    // MARK: Actions
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            print("Play Sound Button slow is Pressed")
            playSound(rate: 0.5)
        case .fast:
            print("Play Sound Button fast is Pressed")
            playSound(rate: 1.5)
        case .chipmunk:
            print("Play Sound Button chipmunk is Pressed")
            playSound(pitch: 1000)
        case .vader:
            print("Play Sound Button vader is Pressed")
            playSound(pitch: -1000)
        case .echo:
            print("Play Sound Button echo is Pressed")
            playSound(echo: true)
        case .reverb:
            print("Play Sound Button reverb is Pressed")
            playSound(reverb: true)
        }
        
        configureUI(.playing)
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        print("Stop Audio Button Pressed")
    }
    

}
