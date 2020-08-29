//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Adwithya Magow on 28/08/20.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
        catch{
            print("Error: Could not play the audio file!")
        }
    }
}
