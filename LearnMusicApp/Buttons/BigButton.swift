//
//  BigButton.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI

struct BigButton: View
{
    var buttonText: String

    var body: some View
    {
        VStack
        {
            Text(buttonText)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.262745098, green: 0.0862745098, blue: 0.8588235294, alpha: 1)), Color(#colorLiteral(red: 0.5647058824, green: 0.462745098, blue: 0.9058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .foregroundColor(.white)
    }

    struct BigButton_Previews: PreviewProvider
    {
        static var previews: some View
        {
            BigButton(buttonText: "Peepee")
        }
    }
}
