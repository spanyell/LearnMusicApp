//
//  QuestionView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI
import AVKit

struct QuestionView: View
{
    var questionInfo: QuestionModel
    @ObservedObject var soundManager = SoundManager()
    @State private var selectedChoice: Int = 0
    @State private var isCorrectChoice = false
    @State private var isIncorrectChoice = false
    @State private var questionNumber: Int = 0

    var body: some View
    {
        ZStack
        {
            VStack
            {
                Text(questionInfo.question)
                    .padding()
                HStack
                {
                    Image(systemName: "play")
                    Text("Play note")
                }
                .onTapGesture {
                    soundManager.playMusicFile(data: NSDataAsset(name: "\(questionInfo.noteTone)")!.data)
                }
                Image(questionInfo.notePicture)
                    .padding()
                let allAnswers = questionInfo.answers.components(separatedBy: ",")
                ForEach(allAnswers.indices, id: \.self)
                {
                    i in
                    BigButton(buttonText: allAnswers[i])
                        .onTapGesture(perform: {
                            selectedChoice = i

                            if selectedChoice == questionInfo.correctAnswer
                            {
                                isCorrectChoice = true


                            }
                            else
                            {
                                isIncorrectChoice = true
                            }
                        })
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 1)
            }
            CorrectChoiceView()
                .offset(y: isCorrectChoice ? 0 : -1000)
                .animation(.spring(response: 0.7, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    isCorrectChoice.toggle()
                }

            IncorrectChoiceView()
                .offset(y: isIncorrectChoice ? 0 : 1000)
                .animation(.spring(response: 0.7, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    isIncorrectChoice.toggle()
                }
        }
    }
}

struct QuestionView_Previews: PreviewProvider
{
    static var previews: some View
    {
        QuestionView(questionInfo: questionData[0])
    }
}
