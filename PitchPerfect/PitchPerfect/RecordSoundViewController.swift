//
//  ViewController.swift
//  PitchPerfect
//
//  Created by 张帝 on 2018/6/12.
//  Copyright © 2018 dizhang. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundViewController: UIViewController,AVAudioRecorderDelegate {
    
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false
        recordingButton.isEnabled = true
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stopRecordingButton.isEnabled = false
        print("viewWillAppear is called")
    }
    /*
    override func viewDidAppear(_ animated: Bool) {
        <#code#>
    }
 */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stopRecording(_ sender: Any) {
        print("Recording was stopped. ")
        stopRecordingButton.isEnabled = false
        recordingButton.isEnabled = true
        recordLabel.text = "Tap To Record..."
        audioRecorder.stop()
        let session = AVAudioSession.sharedInstance()
        try! session.setActive(false)
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        print("Recording button was pressed. ")
        recordLabel.text = "Recording In Progress"
        stopRecordingButton.isEnabled = true
        recordingButton.isEnabled = false
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        //print(filePath)
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if(flag){
            print("finish recording")
            performSegue(withIdentifier: "stopRecording", sender: audioRecorder.url)
        }
        else{
            print("fail to save recording")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "stopRecording" {
            let playSoundsVC: PlaySoundsViewController = segue.destination as! PlaySoundsViewController
            let recordedAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recordedAudioURL
            
        }
    }
}

