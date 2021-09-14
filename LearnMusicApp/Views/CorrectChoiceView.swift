//
//  CorrectChoiceView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI

struct CorrectChoiceView: View
{
    var body: some View
    {
        let nextQuestion = getNextQuestion()

        ZStack
        {
            RoundedRectangle(cornerRadius: 25)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                .frame(width: 250, height: 300)

            VStack
            {
                Text("That's music to my ears!")

                //  Put code in here to ensure that the link is not displayed after the last question is answered correctly.
                NavigationLink(
                    destination: QuestionView(questionInfo: questionData[nextQuestion]),
                    label:
                    {
                        Text("Next Question")
                    })
                    .padding()
            }
        }
    }

    func getNextQuestion() -> Int
    {
        UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "question") + 1, forKey: "question")

        return UserDefaults.standard.integer(forKey: "question")
    }
}

struct CorrectChoiceView_Previews: PreviewProvider
{
    static var previews: some View
    {
        CorrectChoiceView()
    }
}


