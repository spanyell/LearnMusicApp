//
//  QuestionModel.swift
//  LearnMusicApp
//
//  Created by Dan Beers on 9/5/21.
//

import Foundation

struct QuestionModel: Identifiable, Decodable {
    var id: Int
    var question: String
    var answers: String
    var correctAnswer: Int
    var notePicture: String
    var noteTone: String
}
