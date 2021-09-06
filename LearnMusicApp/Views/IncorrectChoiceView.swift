//
//  IncorrectChoiceView.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import SwiftUI

struct IncorrectChoiceView: View {
    var body: some View
    {
        ZStack
        {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                .frame(width: 250, height: 300)
            Text("Nope.")
        }
    }
}

struct IncorrectChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        IncorrectChoiceView()
    }
}
