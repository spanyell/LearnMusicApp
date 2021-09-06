//
//  PlayNoteView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import AVKit
import SwiftUI

struct PlayNoteView: View
{
    @ObservedObject var soundManager = SoundManager()
    var questionInfo: QuestionModel
    var body: some View
    {
        HStack
        {
            Image(systemName: "play")
            Text("Play note")
        }
        .onTapGesture {
            soundManager.playMusicFile(data: NSDataAsset(name: "\(questionInfo.noteTone)")!.data)
        }
    }
}

//struct PlayNoteView_Previews: PreviewProvider
//{
//    static var previews: some View
//    {
//        PlayNoteView()
//    }
//}
