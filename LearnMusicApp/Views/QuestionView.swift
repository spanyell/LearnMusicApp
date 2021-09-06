//
//  QuestionView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI

struct QuestionView: View
{
    var questionInfo: QuestionModel

    var body: some View
    {
        VStack
        {
            Text(questionInfo.question)
                .padding()
            Image(questionInfo.notePicture)
                .padding()
            let allAnswers = questionInfo.answers.components(separatedBy: ",")
            ForEach(allAnswers.indices, id: \.self)
            {
                i in
                BigButton(buttonText: allAnswers[i])
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 1)
            
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
