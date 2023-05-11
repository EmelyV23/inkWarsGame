//
//  SecondViewController.swift
//  inkWarsGame
//
//  Created by Emely Valadez-Bernal on 4/19/23.
//

import UIKit
import AVFoundation
class SecondViewController: UIViewController {
    var bSelectAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playGameTapped(_ sender: UIButton) {
        button()
    }
    
    @IBAction func levelTapped(_ sender: UIButton) {
        button()
    }
    
    @IBAction func secondLevelTapped(_ sender: UIButton) {
        button()
    }
    @IBAction func characterInfoTapped(_ sender: UIButton) {
        button()
    }
    
    func button(){
        let path = Bundle.main.path(forResource: "bSelect", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            bSelectAudioPlayer = try AVAudioPlayer(contentsOf: url)
            bSelectAudioPlayer.play()
        } catch {
            print("there is an issue with the audio")
        }
    }
}
