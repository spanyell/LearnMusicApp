//
//  SoundManager.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import AVKit
import Foundation

class SoundManager: ObservableObject
{
    static let shared = SoundManager()
    
    @Published var player: AVAudioPlayer?
    
    func playMusicFile(data: Data)
    {
        do
        {
            player = try AVAudioPlayer(data: data, fileTypeHint: "mp3")
            player!.play()
        }
        catch{
            print(error.localizedDescription)
        }
    }
}
