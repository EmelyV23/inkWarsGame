//
//  ThirdViewController.swift
//  inkWarsGame
//
//  Created by Emely Valadez-Bernal on 4/19/23.
//

import UIKit
import AVFoundation
class ThirdViewController: UIViewController {
    var bSelectAudioPlayer = AVAudioPlayer()
    @IBOutlet weak var charactersTitle: UIImageView!
    
    @IBOutlet weak var name: UITextView!
    
    @IBOutlet weak var info: UITextView!
    
    @IBOutlet weak var based: UITextView!
    @IBOutlet weak var card: UIImageView!
    
    // 
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    @IBAction func backB(_ sender: UIButton) {
        button()
    }
    @IBAction func nextB(_ sender: UIButton) {
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
