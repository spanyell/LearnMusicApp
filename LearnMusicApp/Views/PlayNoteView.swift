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
        .padding()
        
        .onTapGesture
        {
            soundManager.playMusicFile(data: NSDataAsset(name: "\(questionInfo.noteTone)")!.data)
        }
        .frame(maxWidth: 300)
        .frame(height: 50)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black, radius: 10)
    }
}

struct PlayNoteView_Previews: PreviewProvider
{
    static var previews: some View
    {
        PlayNoteView(questionInfo: questionData[0])
    }
}
