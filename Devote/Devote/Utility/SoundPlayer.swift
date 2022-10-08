//
//  SoundPlayer.swift
//  Devote
//
//  Created by Supapon Pucknavin on 8/10/2565 BE.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
            print(error.localizedDescription)
        }
    }
}
