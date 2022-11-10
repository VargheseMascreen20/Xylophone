//
//  ViewController.swift
//  Xylophone
//
//  Created by DDUKK7 on 10/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    var audio : AVAudioPlayer!
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        var selectedSound = soundArray[(sender.tag)]
        print(sender.tag)
        playingSound(choosedSound: selectedSound)
    }
    func playingSound(choosedSound : String){
        let soundUrl = Bundle.main.url(forResource: choosedSound, withExtension: "wav")
        
        
        audio = try! AVAudioPlayer(contentsOf: soundUrl!)
        audio.prepareToPlay()
        audio.play()
    }
}





//var player: AVAudioPlayer!
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//}
//
//@IBAction func keyPressed(_ sender: UIButton) {
//    playSound()
//}
//
//func playSound() {
//    let url = Bundle.main.url(forResource: "C", withExtension: "wav")
//    player = try! AVAudioPlayer(contentsOf: url!)
//    player.play()
//
//}
//}
