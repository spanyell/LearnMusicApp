//
//  ContentView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: QuestionView(questionInfo: questionData[0]),
                label: {
                    Text("Take Quiz!")
                })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
