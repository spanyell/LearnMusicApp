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
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black, radius: 10)
    }

    struct BigButton_Previews: PreviewProvider
    {
        static var previews: some View
        {
            BigButton(buttonText: "Peepee")
        }
    }
}
