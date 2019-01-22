//
//  ViewController1.swift
//  Swift Is Fun! Player
//
//  Created by Faical Sawadogo1212 on 1/18/19.
//  Copyright © 2019 Faical Sawadogo1212. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController1: UIViewController {
   
    var musicPlayer = MPMusicPlayerController.applicationMusicPlayer
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func ButtonTapped(_ sender: UIButton){
        
        MPMediaLibrary.requestAuthorization { (Status) in
            
            if Status == .authorized {
                self.playGenre(genre: sender.currentTitle!)
            }
        }
   
    }
            @IBAction func StopTappedButton(_ sender: UIButton) {
        musicPlayer.stop()
    }
    @IBAction func NextTappedButton(_ sender: UIButton) {
        musicPlayer.skipToNextItem()
    }
    func playGenre(genre: String) {
       
        musicPlayer.stop()
        
        let query = MPMediaQuery()
        let predicate = MPMediaPropertyPredicate(value:genre, forProperty: MPMediaItemPropertyGenre)
        query.addFilterPredicate(predicate)
        
        query.addFilterPredicate(predicate)
        musicPlayer.setQueue(with: query)
        musicPlayer.shuffleMode = .songs
        musicPlayer.play()
    }

}
    

