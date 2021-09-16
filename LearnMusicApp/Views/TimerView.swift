//
//  TimerView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/16/21.
//

import SwiftUI

struct TimerView: View
{
    @ObservedObject var stopWatchManager = StopWatchManager()
    var body: some View
    {
        VStack
        {
            Text(String(format: "%.1f", stopWatchManager.secondsElapsed))
                .font(.custom("Avenir", size: 40))
                .onAppear()
                {
                    stopWatchManager.start()
                }
        }
    }
}

struct TimerView_Previews: PreviewProvider
{
    static var previews: some View
    {
        TimerView()
    }
}

struct TimerButton: View
{
    let label: String
    let buttonColor: Color

    var body: some View
    {
        Text(label)
            .foregroundColor(.white)
            .padding(.vertical, 20)
            .padding(.horizontal, 90)
            .background(buttonColor)
            .cornerRadius(10)
    }
}
