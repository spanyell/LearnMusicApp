//
//  ContentView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI

struct ContentView: View
{
    @ObservedObject var stopWatchManager = StopWatchManager()
    var body: some View
    {
        NavigationView
        {
            NavigationLink(
                destination: QuestionView(questionInfo: questionData[UserDefaults.standard.integer(forKey: "question")]),
                label:
                {
                    Text("Take Quiz!")
                })
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
