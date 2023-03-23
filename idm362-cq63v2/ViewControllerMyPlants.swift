//
//  ViewControllerMyPlants.swift
//  idm362-cq63v2
//
//  Created by Quynh Quach on 3/23/23.
//

import UIKit
import AVFoundation

var myAudioPlayerObj = AVAudioPlayer()

class ViewControllerMyPlants: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mySound = Bundle.main.path(forResource: "uisound", ofType: "mp3")
        do {
            myAudioPlayerObj = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: mySound!))
            myAudioPlayerObj.prepareToPlay()
            print("Sound file loaded and prepped")
        } catch {
                print(error)
            }
        }

        // Do any additional setup after loading the view.
    
    @IBAction func clickOpenDetails(_ sender: Any) {
        print("playUISOUND called")
        if (myAudioPlayerObj.isPlaying) {
          myAudioPlayerObj.stop()
        } else {
          myAudioPlayerObj.play()
        }
      }
    
    @IBAction func clickOpenDetails2(_ sender: Any) {
        print("playUISOUND called")
        if (myAudioPlayerObj.isPlaying) {
          myAudioPlayerObj.stop()
        } else {
          myAudioPlayerObj.play()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
