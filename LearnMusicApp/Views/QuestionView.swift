//
//  QuestionView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import AVKit
import SwiftUI

struct QuestionView: View
{
    var questionInfo: QuestionModel
    @StateObject var soundManager = SoundManager()
//    @StateObject var stopWatchManager = StopWatchManager()
    @State private var selectedChoice: Int = 0
    @State private var isCorrectChoice = false
    @State private var isIncorrectChoice = false
    @State var questionTime = 0.0
    @State var gradient = [Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))]
    @State var startPoint = UnitPoint(x: 0, y: 0)
    @State var endPoint = UnitPoint(x: 0, y: 5)
    private let animation = Animation.easeInOut(duration: 10).repeatForever(autoreverses: true)

    var body: some View
    {
        ZStack
        {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: gradient), startPoint: startPoint, endPoint: endPoint))
                .onAppear
                {
                    withAnimation(animation)
                    {
                        startPoint = UnitPoint(x: 1, y: -1)
                        endPoint = UnitPoint(x: 0, y: 1)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                Text("\(questionInfo.id)")
                    .font(.footnote)
//                Text(String(format: "%.1f", stopWatchManager.secondsElapsed))
//                    .onAppear()
//                    {
//                        stopWatchManager.start()
//                    }
                Text(questionInfo.question)
                    .font(.headline)
                    .padding()
                PlayNoteView(questionInfo: questionInfo)
                Image(questionInfo.notePicture)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(LinearGradient(gradient: Gradient(colors: gradient), startPoint: startPoint, endPoint: endPoint)))
                    .shadow(radius: 10)
                    .padding()
                    .onAppear
                    {
                        withAnimation(animation)
                        {
                            startPoint = UnitPoint(x: 1, y: -1)
                            endPoint = UnitPoint(x: 0, y: 1)
                        }
                    }
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
//                                stopWatchManager.pause()
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
            CorrectChoiceView(questionInfo: questionInfo)
                .offset(y: isCorrectChoice ? 0 : -1000)
                .animation(.spring(response: 0.7, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture
                {
                    isCorrectChoice.toggle()
                }

            IncorrectChoiceView()
                .offset(y: isIncorrectChoice ? 0 : 1000)
                .animation(.spring(response: 0.7, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture
                {
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
